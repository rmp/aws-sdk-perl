
package Paws::RedShift::ModifySnapshotCopyRetentionPeriodResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has Cluster => (is => 'ro', isa => 'Paws::RedShift::Cluster');

}
1;