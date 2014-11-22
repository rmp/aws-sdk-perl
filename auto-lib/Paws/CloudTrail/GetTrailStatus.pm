
package Paws::CloudTrail::GetTrailStatus {
  use Moose;
  has Name => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTrailStatus');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::GetTrailStatusResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;