
package Paws::ELB::DeregisterInstancesFromLoadBalancer;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::ELB::Instance]', required => 1);
  has LoadBalancerName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeregisterInstancesFromLoadBalancer');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ELB::DeregisterEndPointsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DeregisterInstancesFromLoadBalancerResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ELB::DeregisterInstancesFromLoadBalancer - Arguments for method DeregisterInstancesFromLoadBalancer on Paws::ELB

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeregisterInstancesFromLoadBalancer on the 
Elastic Load Balancing service. Use the attributes of this class
as arguments to method DeregisterInstancesFromLoadBalancer.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeregisterInstancesFromLoadBalancer.

As an example:

  $service_obj->DeregisterInstancesFromLoadBalancer(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> Instances => ArrayRef[L<Paws::ELB::Instance>]

  The IDs of the instances.

=head2 B<REQUIRED> LoadBalancerName => Str

  The name of the load balancer.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeregisterInstancesFromLoadBalancer in L<Paws::ELB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

