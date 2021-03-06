package Paws::RedShift::PendingModifiedValues;
  use Moose;
  has AutomatedSnapshotRetentionPeriod => (is => 'ro', isa => 'Int');
  has ClusterIdentifier => (is => 'ro', isa => 'Str');
  has ClusterType => (is => 'ro', isa => 'Str');
  has ClusterVersion => (is => 'ro', isa => 'Str');
  has MasterUserPassword => (is => 'ro', isa => 'Str');
  has NodeType => (is => 'ro', isa => 'Str');
  has NumberOfNodes => (is => 'ro', isa => 'Int');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::PendingModifiedValues

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::RedShift::PendingModifiedValues object:

  $service_obj->Method(Att1 => { AutomatedSnapshotRetentionPeriod => $value, ..., NumberOfNodes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::RedShift::PendingModifiedValues object:

  $result = $service_obj->Method(...);
  $result->Att1->AutomatedSnapshotRetentionPeriod

=head1 DESCRIPTION

Describes cluster attributes that are in a pending state. A change to
one or more the attributes was requested and is in progress or will be
applied.

=head1 ATTRIBUTES

=head2 AutomatedSnapshotRetentionPeriod => Int

  The pending or in-progress change of the automated snapshot retention
period.

=head2 ClusterIdentifier => Str

  The pending or in-progress change of the new identifier for the
cluster.

=head2 ClusterType => Str

  The pending or in-progress change of the cluster type.

=head2 ClusterVersion => Str

  The pending or in-progress change of the service version.

=head2 MasterUserPassword => Str

  The pending or in-progress change of the master user password for the
cluster.

=head2 NodeType => Str

  The pending or in-progress change of the cluster's node type.

=head2 NumberOfNodes => Int

  The pending or in-progress change of the number of nodes in the
cluster.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::RedShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

