
package Paws::EC2::ReplaceNetworkAclEntry;
  use Moose;
  has CidrBlock => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'cidrBlock' , required => 1);
  has DryRun => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'dryRun' );
  has Egress => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'egress' , required => 1);
  has IcmpTypeCode => (is => 'ro', isa => 'Paws::EC2::IcmpTypeCode', traits => ['NameInRequest'], request_name => 'Icmp' );
  has NetworkAclId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'networkAclId' , required => 1);
  has PortRange => (is => 'ro', isa => 'Paws::EC2::PortRange', traits => ['NameInRequest'], request_name => 'portRange' );
  has Protocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocol' , required => 1);
  has RuleAction => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'ruleAction' , required => 1);
  has RuleNumber => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'ruleNumber' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplaceNetworkAclEntry');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReplaceNetworkAclEntry - Arguments for method ReplaceNetworkAclEntry on Paws::EC2

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReplaceNetworkAclEntry on the 
Amazon Elastic Compute Cloud service. Use the attributes of this class
as arguments to method ReplaceNetworkAclEntry.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReplaceNetworkAclEntry.

As an example:

  $service_obj->ReplaceNetworkAclEntry(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> CidrBlock => Str

  The network range to allow or deny, in CIDR notation.

=head2 DryRun => Bool

  Checks whether you have the required permissions for the action,
without actually making the request, and provides an error response. If
you have the required permissions, the error response is
C<DryRunOperation>. Otherwise, it is C<UnauthorizedOperation>.

=head2 B<REQUIRED> Egress => Bool

  Indicates whether to replace the egress rule.

Default: If no value is specified, we replace the ingress rule.

=head2 IcmpTypeCode => L<Paws::EC2::IcmpTypeCode>

  ICMP protocol: The ICMP type and code. Required if specifying 1 (ICMP)
for the protocol.

=head2 B<REQUIRED> NetworkAclId => Str

  The ID of the ACL.

=head2 PortRange => L<Paws::EC2::PortRange>

  TCP or UDP protocols: The range of ports the rule applies to. Required
if specifying 6 (TCP) or 17 (UDP) for the protocol.

=head2 B<REQUIRED> Protocol => Str

  The IP protocol. You can specify C<all> or C<-1> to mean all protocols.

=head2 B<REQUIRED> RuleAction => Str

  Indicates whether to allow or deny the traffic that matches the rule.

=head2 B<REQUIRED> RuleNumber => Int

  The rule number of the entry to replace.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReplaceNetworkAclEntry in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

