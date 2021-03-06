
package Paws::EMR::RunJobFlow;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Str');
  has AmiVersion => (is => 'ro', isa => 'Str');
  has Applications => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Application]');
  has BootstrapActions => (is => 'ro', isa => 'ArrayRef[Paws::EMR::BootstrapActionConfig]');
  has Configurations => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Configuration]');
  has Instances => (is => 'ro', isa => 'Paws::EMR::JobFlowInstancesConfig', required => 1);
  has JobFlowRole => (is => 'ro', isa => 'Str');
  has LogUri => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NewSupportedProducts => (is => 'ro', isa => 'ArrayRef[Paws::EMR::SupportedProductConfig]');
  has ReleaseLabel => (is => 'ro', isa => 'Str');
  has ServiceRole => (is => 'ro', isa => 'Str');
  has Steps => (is => 'ro', isa => 'ArrayRef[Paws::EMR::StepConfig]');
  has SupportedProducts => (is => 'ro', isa => 'ArrayRef[Str]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EMR::Tag]');
  has VisibleToAllUsers => (is => 'ro', isa => 'Bool');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RunJobFlow');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMR::RunJobFlowOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMR::RunJobFlow - Arguments for method RunJobFlow on Paws::EMR

=head1 DESCRIPTION

This class represents the parameters used for calling the method RunJobFlow on the 
Amazon Elastic MapReduce service. Use the attributes of this class
as arguments to method RunJobFlow.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RunJobFlow.

As an example:

  $service_obj->RunJobFlow(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 AdditionalInfo => Str

  A JSON string for selecting additional features.

=head2 AmiVersion => Str

  For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
greater, use ReleaseLabel.

The version of the Amazon Machine Image (AMI) to use when launching
Amazon EC2 instances in the job flow. The following values are valid:

=over

=item * The version number of the AMI to use, for example, "2.0."

=back

If the AMI supports multiple versions of Hadoop (for example, AMI 1.0
supports both Hadoop 0.18 and 0.20) you can use the
JobFlowInstancesConfig C<HadoopVersion> parameter to modify the version
of Hadoop from the defaults shown above.

For details about the AMI versions currently supported by Amazon
Elastic MapReduce, go to AMI Versions Supported in Elastic MapReduce in
the I<Amazon Elastic MapReduce Developer's Guide.>

=head2 Applications => ArrayRef[L<Paws::EMR::Application>]

  Amazon EMR releases 4.x or later.

A list of applications for the cluster. Valid values are: "Hadoop",
"Hive", "Mahout", "Pig", and "Spark." They are case insensitive.

=head2 BootstrapActions => ArrayRef[L<Paws::EMR::BootstrapActionConfig>]

  A list of bootstrap actions that will be run before Hadoop is started
on the cluster nodes.

=head2 Configurations => ArrayRef[L<Paws::EMR::Configuration>]

  Amazon EMR releases 4.x or later.

The list of configurations supplied for the EMR cluster you are
creating.

=head2 B<REQUIRED> Instances => L<Paws::EMR::JobFlowInstancesConfig>

  A specification of the number and type of Amazon EC2 instances on which
to run the job flow.

=head2 JobFlowRole => Str

  An IAM role for the job flow. The EC2 instances of the job flow assume
this role. The default role is C<EMRJobflowDefault>. In order to use
the default role, you must have already created it using the CLI.

=head2 LogUri => Str

  The location in Amazon S3 to write the log files of the job flow. If a
value is not provided, logs are not created.

=head2 B<REQUIRED> Name => Str

  The name of the job flow.

=head2 NewSupportedProducts => ArrayRef[L<Paws::EMR::SupportedProductConfig>]

  For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
greater, use Applications.

A list of strings that indicates third-party software to use with the
job flow that accepts a user argument list. EMR accepts and forwards
the argument list to the corresponding installation script as bootstrap
action arguments. For more information, see Launch a Job Flow on the
MapR Distribution for Hadoop. Currently supported values are:

=over

=item * "mapr-m3" - launch the cluster using MapR M3 Edition.

=item * "mapr-m5" - launch the cluster using MapR M5 Edition.

=item * "mapr" with the user arguments specifying "--edition,m3" or
"--edition,m5" - launch the job flow using MapR M3 or M5 Edition
respectively.

=item * "mapr-m7" - launch the cluster using MapR M7 Edition.

=item * "hunk" - launch the cluster with the Hunk Big Data Analtics
Platform.

=item * "hue"- launch the cluster with Hue installed.

=item * "spark" - launch the cluster with Apache Spark installed.

=item * "ganglia" - launch the cluster with the Ganglia Monitoring
System installed.

=back


=head2 ReleaseLabel => Str

  Amazon EMR releases 4.x or later.

The release label for the Amazon EMR release. For Amazon EMR 3.x and
2.x AMIs, use amiVersion instead instead of ReleaseLabel.

=head2 ServiceRole => Str

  The IAM role that will be assumed by the Amazon EMR service to access
AWS resources on your behalf.

=head2 Steps => ArrayRef[L<Paws::EMR::StepConfig>]

  A list of steps to be executed by the job flow.

=head2 SupportedProducts => ArrayRef[Str]

  For Amazon EMR releases 3.x and 2.x. For Amazon EMR releases 4.x and
greater, use Applications.

A list of strings that indicates third-party software to use with the
job flow. For more information, go to Use Third Party Applications with
Amazon EMR. Currently supported values are:

=over

=item * "mapr-m3" - launch the job flow using MapR M3 Edition.

=item * "mapr-m5" - launch the job flow using MapR M5 Edition.

=back


=head2 Tags => ArrayRef[L<Paws::EMR::Tag>]

  A list of tags to associate with a cluster and propagate to Amazon EC2
instances.

=head2 VisibleToAllUsers => Bool

  Whether the job flow is visible to all IAM users of the AWS account
associated with the job flow. If this value is set to C<true>, all IAM
users of that AWS account can view and (if they have the proper policy
permissions set) manage the job flow. If it is set to C<false>, only
the IAM user that created the job flow can view and manage it.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RunJobFlow in L<Paws::EMR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

