
package Paws::EC2::BundleInstanceResult;
  use Moose;
  has BundleTask => (is => 'ro', isa => 'Paws::EC2::BundleTask', xmlname => 'bundleInstanceTask', traits => ['Unwrapped',]);

1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::BundleInstanceResult

=head1 ATTRIBUTES

=head2 BundleTask => L<Paws::EC2::BundleTask>

  Information about the bundle task.


=cut

