
package Paws::WAF::DeleteSqlInjectionMatchSetResponse;
  use Moose;
  has ChangeToken => (is => 'ro', isa => 'Str');


### main pod documentation begin ###

=head1 NAME

Paws::WAF::DeleteSqlInjectionMatchSetResponse

=head1 ATTRIBUTES

=head2 ChangeToken => Str

  The C<ChangeToken> that you used to submit the
C<DeleteSqlInjectionMatchSet> request. You can also use this value to
query the status of the request. For more information, see
GetChangeTokenStatus.


=cut

1;