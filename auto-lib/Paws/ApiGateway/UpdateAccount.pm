
package Paws::ApiGateway::UpdateAccount;
  use Moose;
  has PatchOperations => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::PatchOperation]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAccount');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/account');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApiGateway::Account');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateAccountResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::UpdateAccount - Arguments for method UpdateAccount on Paws::ApiGateway

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAccount on the 
Amazon API Gateway service. Use the attributes of this class
as arguments to method UpdateAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAccount.

As an example:

  $service_obj->UpdateAccount(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 PatchOperations => ArrayRef[L<Paws::ApiGateway::PatchOperation>]

  A list of operations describing the updates to apply to the specified
resource. The patches are applied in the order specified in the list.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAccount in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

