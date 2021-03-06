package Paws::SSM::InstanceInformationFilter;
  use Moose;
  has Key => (is => 'ro', isa => 'Str', xmlname => 'key', request_name => 'key', traits => ['Unwrapped','NameInRequest'], required => 1);
  has ValueSet => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'valueSet', request_name => 'valueSet', traits => ['Unwrapped','NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::InstanceInformationFilter

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SSM::InstanceInformationFilter object:

  $service_obj->Method(Att1 => { Key => $value, ..., ValueSet => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SSM::InstanceInformationFilter object:

  $result = $service_obj->Method(...);
  $result->Att1->Key

=head1 DESCRIPTION

Describes a filter for a specific list of instances.

=head1 ATTRIBUTES

=head2 B<REQUIRED> Key => Str

  The name of the filter.

=head2 B<REQUIRED> ValueSet => ArrayRef[Str]

  The filter values.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

