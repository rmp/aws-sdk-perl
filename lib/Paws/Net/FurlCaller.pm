package Paws::Net::FurlCaller {
  # This caller uses Furl
  use Moose;
  use Carp qw(croak);
  with 'Paws::Net::CallerRole';
  use Furl;

  has debug              => ( is => 'rw', required => 0, default => sub { 0 } );
  has ua => (is => 'rw', required => 1, lazy => 1,
    default     => sub {
        my $ua = Furl->new(
          timeout => 60,
          agent => 'AWS Perl SDK ' . $Paws::VERSION,
        );
        return $ua;
    }
  );

  sub do_call {
    my ($self, $service, $call_object) = @_;

    my $requestObj = $service->prepare_request_for_call($call_object); 

    my $headers = $requestObj->header_hash;
    # HTTP::Tiny derives the Host header from the URL. It's an error to set it.
    delete $headers->{Host};

    my $method = lc $requestObj->method;
    my $response = $self->ua->request(
      url => $requestObj->url,
      headers => [ %$headers ],
      method => $method,
      (defined $requestObj->content)?(content => $requestObj->content):(),
    );

    if ($response->code == 500 and defined $response->header('x-internal-response')) {
        Paws::Exception->throw(message => $response->content, code => 'ConnectionError', request_id => '');
    } else {
      my $res = $service->handle_response($call_object, $response->code, $response->content, $response->headers);
      if (not ref($res)){
        return $res;
      } elsif ($res->isa('Paws::Exception')) {
        $res->throw;
      } else {
        return $res;
      }
    }
  }
}

1;
