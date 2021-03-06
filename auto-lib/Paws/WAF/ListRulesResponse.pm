
package Paws::WAF::ListRulesResponse;
  use Moose;
  has NextMarker => (is => 'ro', isa => 'Str');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::WAF::RuleSummary]');


### main pod documentation begin ###

=head1 NAME

Paws::WAF::ListRulesResponse

=head1 ATTRIBUTES

=head2 NextMarker => Str

  If you have more C<Rules> than the number that you specified for
C<Limit> in the request, the response includes a C<NextMarker> value.
To list more C<Rules>, submit another C<ListRules> request, and specify
the C<NextMarker> value from the response in the C<NextMarker> value in
the next request.
=head2 Rules => ArrayRef[L<Paws::WAF::RuleSummary>]

  An array of RuleSummary objects.


=cut

1;