package Paws::EC2::InstanceStatus {
  use Moose;
  has AvailabilityZone => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'availabilityZone');
  has Events => (is => 'ro', isa => 'ArrayRef[Paws::EC2::InstanceStatusEvent]', traits => ['Unwrapped'], xmlname => 'eventsSet');
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'instanceId');
  has InstanceState => (is => 'ro', isa => 'Paws::EC2::InstanceState', traits => ['Unwrapped'], xmlname => 'instanceState');
  has InstanceStatus => (is => 'ro', isa => 'Paws::EC2::InstanceStatusSummary', traits => ['Unwrapped'], xmlname => 'instanceStatus');
  has SystemStatus => (is => 'ro', isa => 'Paws::EC2::InstanceStatusSummary', traits => ['Unwrapped'], xmlname => 'systemStatus');
}
1;
