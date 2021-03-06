
package Paws::Support::CreateCaseResponse;
  use Moose;
  has CaseId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'caseId' );


### main pod documentation begin ###

=head1 NAME

Paws::Support::CreateCaseResponse

=head1 ATTRIBUTES

=head2 CaseId => Str

  The AWS Support case ID requested or returned in the call. The case ID
is an alphanumeric string formatted as shown in this example:
case-I<12345678910-2013-c4c1d2bf33c5cf47>


=cut

1;