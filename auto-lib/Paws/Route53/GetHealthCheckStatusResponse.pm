
package Paws::Route53::GetHealthCheckStatusResponse;
  use Moose;
  has HealthCheckObservations => (is => 'ro', isa => 'ArrayRef[Paws::Route53::HealthCheckObservation]', traits => ['Unwrapped'], xmlname => 'HealthCheckObservation', required => 1);

1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53:: - Arguments for method  on Paws::Route53

=head1 DESCRIPTION

This class represents the parameters used for calling the method  on the 
Amazon Route 53 service. Use the attributes of this class
as arguments to method .

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to .

As an example:

  $service_obj->(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> HealthCheckObservations => ArrayRef[L<Paws::Route53::HealthCheckObservation>]

  A list that contains one C<HealthCheckObservation> element for each
Route 53 health checker.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method  in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

