
package Paws::SES::VerifyEmailIdentity {
  use Moose;
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'VerifyEmailIdentity');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SES::VerifyEmailIdentityResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'VerifyEmailIdentityResult');
}
1;