
package Paws::EC2::ImportKeyPair;
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has KeyName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'keyName' , required => 1);
  has PublicKeyMaterial => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'publicKeyMaterial' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportKeyPair');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::ImportKeyPairResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportKeyPair - Arguments for method ImportKeyPair on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportKeyPair on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method ImportKeyPair.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportKeyPair.

As an example:

  $service_obj->ImportKeyPair(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 DryRun => Bool

  Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.

=head2 B<REQUIRED> KeyName => Str

  A unique name for the key pair.

=head2 B<REQUIRED> PublicKeyMaterial => Str

  The public key. You must base64 encode the public key material before
sending it to AWS.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportKeyPair in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

