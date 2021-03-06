package Paws::CloudFront::CachedMethods;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has Quantity => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CachedMethods

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::CloudFront::CachedMethods object:

  $service_obj->Method(Att1 => { Items => $value, ..., Quantity => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::CloudFront::CachedMethods object:

  $result = $service_obj->Method(...);
  $result->Att1->Items

=head1 DESCRIPTION

A complex type that controls whether CloudFront caches the response to
requests using the specified HTTP methods. There are two choices: -
CloudFront caches responses to GET and HEAD requests. - CloudFront
caches responses to GET, HEAD, and OPTIONS requests. If you pick the
second choice for your S3 Origin, you may need to forward
Access-Control-Request-Method, Access-Control-Request-Headers and
Origin headers for the responses to be cached correctly.

=head1 ATTRIBUTES

=head2 B<REQUIRED> Items => ArrayRef[Str]

  A complex type that contains the HTTP methods that you want CloudFront
to cache responses to.

=head2 B<REQUIRED> Quantity => Int

  The number of HTTP methods for which you want CloudFront to cache
responses. Valid values are 2 (for caching responses to GET and HEAD
requests) and 3 (for caching responses to GET, HEAD, and OPTIONS
requests).



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

