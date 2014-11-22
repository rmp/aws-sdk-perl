
package Paws::IAM::GetUser {
  use Moose;
  has UserName => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::GetUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'GetUserResult');
}
1;