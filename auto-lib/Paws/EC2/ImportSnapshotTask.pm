package Paws::EC2::ImportSnapshotTask;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', xmlname => 'description', traits => ['Unwrapped']);
  has ImportTaskId => (is => 'ro', isa => 'Str', xmlname => 'importTaskId', traits => ['Unwrapped']);
  has SnapshotTaskDetail => (is => 'ro', isa => 'Paws::EC2::SnapshotTaskDetail', xmlname => 'snapshotTaskDetail', traits => ['Unwrapped']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ImportSnapshotTask

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::ImportSnapshotTask object:

  $service_obj->Method(Att1 => { Description => $value, ..., SnapshotTaskDetail => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::ImportSnapshotTask object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES

=head2 Description => Str

  A description of the import snapshot task.

=head2 ImportTaskId => Str

  The ID of the import snapshot task.

=head2 SnapshotTaskDetail => L<Paws::EC2::SnapshotTaskDetail>

  Describes an import snapshot task.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
