package Paws::DynamoDB::ProvisionedThroughput;
  use Moose;
  has ReadCapacityUnits => (is => 'ro', isa => 'Int', required => 1);
  has WriteCapacityUnits => (is => 'ro', isa => 'Int', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ProvisionedThroughput

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::ProvisionedThroughput object:

  $service_obj->Method(Att1 => { ReadCapacityUnits => $value, ..., WriteCapacityUnits => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::ProvisionedThroughput object:

  $result = $service_obj->Method(...);
  $result->Att1->ReadCapacityUnits

=head1 DESCRIPTION

Represents the provisioned throughput settings for a specified table or
index. The settings can be modified using the I<UpdateTable> operation.

For current minimum and maximum provisioned throughput values, see
Limits in the I<Amazon DynamoDB Developer Guide>.

=head1 ATTRIBUTES

=head2 B<REQUIRED> ReadCapacityUnits => Int

  The maximum number of strongly consistent reads consumed per second
before DynamoDB returns a I<ThrottlingException>. For more information,
see Specifying Read and Write Requirements in the I<Amazon DynamoDB
Developer Guide>.

=head2 B<REQUIRED> WriteCapacityUnits => Int

  The maximum number of writes consumed per second before DynamoDB
returns a I<ThrottlingException>. For more information, see Specifying
Read and Write Requirements in the I<Amazon DynamoDB Developer Guide>.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

