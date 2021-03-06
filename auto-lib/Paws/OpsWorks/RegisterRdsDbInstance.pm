
package Paws::OpsWorks::RegisterRdsDbInstance;
  use Moose;
  has DbPassword => (is => 'ro', isa => 'Str', required => 1);
  has DbUser => (is => 'ro', isa => 'Str', required => 1);
  has RdsDbInstanceArn => (is => 'ro', isa => 'Str', required => 1);
  has StackId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterRdsDbInstance');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpsWorks::RegisterRdsDbInstance - Arguments for method RegisterRdsDbInstance on Paws::OpsWorks

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterRdsDbInstance on the 
AWS OpsWorks service. Use the attributes of this class
as arguments to method RegisterRdsDbInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterRdsDbInstance.

As an example:

  $service_obj->RegisterRdsDbInstance(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> DbPassword => Str

  The database password.

=head2 B<REQUIRED> DbUser => Str

  The database's master user name.

=head2 B<REQUIRED> RdsDbInstanceArn => Str

  The Amazon RDS instance's ARN.

=head2 B<REQUIRED> StackId => Str

  The stack ID.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterRdsDbInstance in L<Paws::OpsWorks>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

