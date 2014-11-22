
package Paws::RedShift::DescribeHsmConfigurations {
  use Moose;
  has HsmConfigurationIdentifier => (is => 'ro', isa => 'Str');
  has Marker => (is => 'ro', isa => 'Str');
  has MaxRecords => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeHsmConfigurations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::HsmConfigurationMessage');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'DescribeHsmConfigurationsResult');
}
1;