
package Paws::DeviceFarm::ListRunsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );
  has Runs => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Run]', traits => ['Unwrapped'], xmlname => 'runs' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListRunsResult

=head1 ATTRIBUTES

=head2 NextToken => Str

  If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.
=head2 Runs => ArrayRef[L<Paws::DeviceFarm::Run>]

  Information about the runs.


=cut

1;