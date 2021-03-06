
package Paws::WAF::DeleteIPSetResponse;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::WAF::DeleteIPSetResponse

=head1 ATTRIBUTES

=head2 ChangeToken => Str

  The C<ChangeToken> that you used to submit the C<DeleteIPSet> request.
You can also use this value to query the status of the request. For
more information, see GetChangeTokenStatus.


=cut

1;