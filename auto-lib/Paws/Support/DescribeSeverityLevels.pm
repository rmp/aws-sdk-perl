
package Paws::Support::DescribeSeverityLevels {
  use Moose;
  has language => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeSeverityLevels');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Support::DescribeSeverityLevelsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;