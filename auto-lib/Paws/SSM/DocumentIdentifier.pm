package Paws::SSM::DocumentIdentifier;
  use Moose;
  has Name => (is => 'ro', isa => 'Str');
  has PlatformTypes => (is => 'ro', isa => 'ArrayRef[Str]');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DocumentIdentifier

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::DocumentIdentifier object:

  $service_obj->Method(Att1 => { Name => $value, ..., PlatformTypes => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::DocumentIdentifier object:

  $result = $service_obj->Method(...);
  $result->Att1->Name

=head1 DESCRIPTION

Describes the name of an SSM document.

=head1 ATTRIBUTES

=head2 Name => Str

  The name of the SSM document.

=head2 PlatformTypes => ArrayRef[Str]

  The operating system platform.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

