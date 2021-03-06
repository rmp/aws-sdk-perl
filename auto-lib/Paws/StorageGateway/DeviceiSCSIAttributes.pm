package Paws::StorageGateway::DeviceiSCSIAttributes;
  use Moose;
  has ChapEnabled => (is => 'ro', isa => 'Bool');
  has NetworkInterfaceId => (is => 'ro', isa => 'Str');
  has NetworkInterfacePort => (is => 'ro', isa => 'Int');
  has TargetARN => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::StorageGateway::DeviceiSCSIAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::StorageGateway::DeviceiSCSIAttributes object:

  $service_obj->Method(Att1 => { ChapEnabled => $value, ..., TargetARN => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::StorageGateway::DeviceiSCSIAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->ChapEnabled

=head1 DESCRIPTION

Lists iSCSI information about a VTL device.

=head1 ATTRIBUTES

=head2 ChapEnabled => Bool

  Indicates whether mutual CHAP is enabled for the iSCSI target.

=head2 NetworkInterfaceId => Str

  The network interface identifier of the VTL device.

=head2 NetworkInterfacePort => Int

  The port used to communicate with iSCSI VTL device targets.

=head2 TargetARN => Str

  Specifies the unique Amazon Resource Name(ARN) that encodes the iSCSI
qualified name(iqn) of a tape drive or media changer target.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::StorageGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

