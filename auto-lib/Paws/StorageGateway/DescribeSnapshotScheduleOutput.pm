
package Paws::StorageGateway::DescribeSnapshotScheduleOutput {
  use Moose;
  with 'Paws::API::ResultParser';
  has Description => (is => 'ro', isa => 'Str');
  has RecurrenceInHours => (is => 'ro', isa => 'Int');
  has StartAt => (is => 'ro', isa => 'Int');
  has Timezone => (is => 'ro', isa => 'Str');
  has VolumeARN => (is => 'ro', isa => 'Str');

}
1;