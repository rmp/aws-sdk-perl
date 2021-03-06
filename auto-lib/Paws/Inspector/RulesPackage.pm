package Paws::Inspector::RulesPackage;
  use Moose;
  has Description => (is => 'ro', isa => 'Paws::Inspector::LocalizedText', xmlname => 'description', request_name => 'description', traits => ['Unwrapped','NameInRequest']);
  has Provider => (is => 'ro', isa => 'Str', xmlname => 'provider', request_name => 'provider', traits => ['Unwrapped','NameInRequest']);
  has RulesPackageArn => (is => 'ro', isa => 'Str', xmlname => 'rulesPackageArn', request_name => 'rulesPackageArn', traits => ['Unwrapped','NameInRequest']);
  has RulesPackageName => (is => 'ro', isa => 'Str', xmlname => 'rulesPackageName', request_name => 'rulesPackageName', traits => ['Unwrapped','NameInRequest']);
  has Version => (is => 'ro', isa => 'Str', xmlname => 'version', request_name => 'version', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::RulesPackage

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::RulesPackage object:

  $service_obj->Method(Att1 => { Description => $value, ..., Version => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::RulesPackage object:

  $result = $service_obj->Method(...);
  $result->Att1->Description

=head1 DESCRIPTION

Contains information about an Inspector rules package.

This data type is used as the response element in the
DescribeRulesPackage action.

=head1 ATTRIBUTES

=head2 Description => L<Paws::Inspector::LocalizedText>

  The description of the rules package.

=head2 Provider => Str

  The provider of the rules package.

=head2 RulesPackageArn => Str

  The ARN of the rules package.

=head2 RulesPackageName => Str

  The name of the rules package.

=head2 Version => Str

  The version id of the rules package.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

