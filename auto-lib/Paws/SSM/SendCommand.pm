
package Paws::SSM::SendCommand;
  use Moose;
  has Comment => (is => 'ro', isa => 'Str');
  has DocumentName => (is => 'ro', isa => 'Str', required => 1);
  has InstanceIds => (is => 'ro', isa => 'ArrayRef[Str]', required => 1);
  has OutputS3BucketName => (is => 'ro', isa => 'Str');
  has OutputS3KeyPrefix => (is => 'ro', isa => 'Str');
  has Parameters => (is => 'ro', isa => 'Paws::SSM::Parameters');
  has TimeoutSeconds => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SendCommand');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::SendCommandResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::SendCommand - Arguments for method SendCommand on Paws::SSM

=head1 DESCRIPTION

This class represents the parameters used for calling the method SendCommand on the 
Amazon Simple Systems Management Service service. Use the attributes of this class
as arguments to method SendCommand.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SendCommand.

As an example:

  $service_obj->SendCommand(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 Comment => Str

  User-specified information about the command, such as a brief
description of what the command should do.

=head2 B<REQUIRED> DocumentName => Str

  Required. The name of the SSM document to execute. This can be an SSM
public document or a custom document.

=head2 B<REQUIRED> InstanceIds => ArrayRef[Str]

  Required. The instance IDs where the command should execute.

=head2 OutputS3BucketName => Str

  The name of the S3 bucket where command execution responses should be
stored.

=head2 OutputS3KeyPrefix => Str

  The directory structure within the S3 bucket where the responses should
be stored.

=head2 Parameters => L<Paws::SSM::Parameters>

  The required and optional parameters specified in the SSM document
being executed.

=head2 TimeoutSeconds => Int

  If this time is reached and the command has not already started
executing, it will not execute.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SendCommand in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

