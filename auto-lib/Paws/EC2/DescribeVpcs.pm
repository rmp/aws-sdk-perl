
package Paws::EC2::DescribeVpcs {
  use Moose;
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Filter]', traits => ['NameInRequest'], request_name => 'Filter' );
  has VpcIds => (is => 'ro', isa => 'ArrayRef[Str]', traits => ['NameInRequest'], request_name => 'VpcId' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeVpcs');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EC2::DescribeVpcsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeVpcs - Arguments for method DescribeVpcs on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeVpcs on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method DescribeVpcs.

You shouln't make instances of this class. Each attribute should be used as a named argument in the call to DescribeVpcs.

As an example:

  $service_obj->DescribeVpcs(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 DryRun => Bool

  

=head2 Filters => ArrayRef[Paws::EC2::Filter]

  

One or more filters.

=over

=item *

C<cidr> - The CIDR block of the VPC. The CIDR block you specify must
exactly match the VPC's CIDR block for information to be returned for
the VPC. Must contain the slash followed by one or two digits (for
example, C</28>).

=item *

C<dhcp-options-id> - The ID of a set of DHCP options.

=item *

C<isDefault> - Indicates whether the VPC is the default VPC.

=item *

C<state> - The state of the VPC (C<pending> | C<available>).

=item *

C<tag>:I<key>=I<value> - The key/value combination of a tag assigned to
the resource.

=item *

C<tag-key> - The key of a tag assigned to the resource. This filter is
independent of the C<tag-value> filter. For example, if you use both
the filter "tag-key=Purpose" and the filter "tag-value=X", you get any
resources assigned both the tag key Purpose (regardless of what the
tag's value is), and the tag value X (regardless of what the tag's key
is). If you want to list only resources where Purpose is X, see the
C<tag>:I<key>=I<value> filter.

=item *

C<tag-value> - The value of a tag assigned to the resource. This filter
is independent of the C<tag-key> filter.

=item *

C<vpc-id> - The ID of the VPC.

=back










=head2 VpcIds => ArrayRef[Str]

  

One or more VPC IDs.

Default: Describes all your VPCs.












=head1 SEE ALSO

This class forms part of L<Paws>, and documents parameters for DescribeVpcs in Paws::EC2

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut
