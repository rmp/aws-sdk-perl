
package Paws::DeviceFarm::ListProjectsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );
  has Projects => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Project]', traits => ['Unwrapped'], xmlname => 'projects' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListProjectsResult

=head1 ATTRIBUTES

=head2 NextToken => Str

  If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.
=head2 Projects => ArrayRef[L<Paws::DeviceFarm::Project>]

  Information about the projects.


=cut

1;