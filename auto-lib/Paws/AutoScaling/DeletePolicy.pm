
package Paws::AutoScaling::DeletePolicy;
  use Moose;
  has AutoScalingGroupName => (is => 'ro', isa => 'Str');
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePolicy');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DeletePolicy - Arguments for method DeletePolicy on Paws::AutoScaling

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePolicy on the 
Auto Scaling service. Use the attributes of this class
as arguments to method DeletePolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePolicy.

As an example:

  $service_obj->DeletePolicy(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 AutoScalingGroupName => Str

  The name of the Auto Scaling group.

=head2 B<REQUIRED> PolicyName => Str

  The name or Amazon Resource Name (ARN) of the policy.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePolicy in L<Paws::AutoScaling>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

