
package Paws::RedShift::ModifySnapshotCopyRetentionPeriod {
  use Moose;
  has ClusterIdentifier => (is => 'ro', isa => 'Str', required => 1);
  has RetentionPeriod => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ModifySnapshotCopyRetentionPeriod');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedShift::ModifySnapshotCopyRetentionPeriodResult');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ModifySnapshotCopyRetentionPeriodResult');
}
1;