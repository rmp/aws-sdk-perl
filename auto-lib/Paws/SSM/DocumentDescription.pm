package Paws::SSM::DocumentDescription;
  use Moose;
  has CreatedDate => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::SSM::DocumentParameter]');
  has PlatformTypes => (is => 'ro', isa => 'ArrayRef[Str]');
  has Sha1 => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DocumentDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::DocumentDescription object:

  $service_obj->Method(Att1 => { CreatedDate => $value, ..., Status => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::DocumentDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->CreatedDate

=head1 DESCRIPTION

Describes an SSM document.

=head1 ATTRIBUTES

=head2 CreatedDate => Str

  The date when the SSM document was created.

=head2 Description => Str

  A description of the document.

=head2 Name => Str

  The name of the SSM document.

=head2 Parameters => ArrayRef[L<Paws::SSM::DocumentParameter>]

  A description of the parameters for a document.

=head2 PlatformTypes => ArrayRef[Str]

  The list of OS platforms compatible with this SSM document.

=head2 Sha1 => Str

  The SHA1 hash of the document, which you can use for verification
purposes.

=head2 Status => Str

  The status of the SSM document.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

