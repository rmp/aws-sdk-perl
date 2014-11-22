
package Paws::KMS::GetKeyPolicy {
  use Moose;
  has KeyId => (is => 'ro', isa => 'Str', required => 1);
  has PolicyName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetKeyPolicy');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::GetKeyPolicyResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;