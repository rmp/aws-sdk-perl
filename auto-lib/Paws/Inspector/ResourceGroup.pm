package Paws::Inspector::ResourceGroup;
  use Moose;
  has ResourceGroupArn => (is => 'ro', isa => 'Str', xmlname => 'resourceGroupArn', request_name => 'resourceGroupArn', traits => ['Unwrapped','NameInRequest']);
  has ResourceGroupTags => (is => 'ro', isa => 'Str', xmlname => 'resourceGroupTags', request_name => 'resourceGroupTags', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector::ResourceGroup

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Inspector::ResourceGroup object:

  $service_obj->Method(Att1 => { ResourceGroupArn => $value, ..., ResourceGroupTags => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Inspector::ResourceGroup object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceGroupArn

=head1 DESCRIPTION

Contains information about a resource group. The resource group defines
a set of tags that, when queried, identify the AWS resources that
comprise the application.

This data type is used as the response element in the
DescribeResourceGroup action.

=head1 ATTRIBUTES

=head2 ResourceGroupArn => Str

  The ARN of the resource group.

=head2 ResourceGroupTags => Str

  The tags (key and value pairs) of the resource group.

This data type property is used in the CreateResourceGroup action.

A collection of keys and an array of possible values in JSON format.

For example, [{ "key1" : ["Value1","Value2"]},{"Key2": ["Value3"]}]



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Inspector>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

