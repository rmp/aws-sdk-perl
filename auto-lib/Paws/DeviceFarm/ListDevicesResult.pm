
package Paws::DeviceFarm::ListDevicesResult;
  use Moose;
  has Devices => (is => 'ro', isa => 'ArrayRef[Paws::DeviceFarm::Device]', traits => ['Unwrapped'], xmlname => 'devices' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'nextToken' );


### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ListDevicesResult

=head1 ATTRIBUTES

=head2 Devices => ArrayRef[L<Paws::DeviceFarm::Device>]

  Information about the devices.
=head2 NextToken => Str

  If the number of items that are returned is significantly large, this
is an identifier that is also returned, which can be used in a
subsequent call to this operation to return the next set of items in
the list.


=cut

1;