package Paws::DynamoDB::TableDescription;
  use Moose;
  has AttributeDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::AttributeDefinition]');
  has CreationDateTime => (is => 'ro', isa => 'Str');
  has GlobalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::GlobalSecondaryIndexDescription]');
  has ItemCount => (is => 'ro', isa => 'Int');
  has KeySchema => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::KeySchemaElement]');
  has LatestStreamArn => (is => 'ro', isa => 'Str');
  has LatestStreamLabel => (is => 'ro', isa => 'Str');
  has LocalSecondaryIndexes => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::LocalSecondaryIndexDescription]');
  has ProvisionedThroughput => (is => 'ro', isa => 'Paws::DynamoDB::ProvisionedThroughputDescription');
  has StreamSpecification => (is => 'ro', isa => 'Paws::DynamoDB::StreamSpecification');
  has TableArn => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');
  has TableSizeBytes => (is => 'ro', isa => 'Int');
  has TableStatus => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::TableDescription

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DynamoDB::TableDescription object:

  $service_obj->Method(Att1 => { AttributeDefinitions => $value, ..., TableStatus => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DynamoDB::TableDescription object:

  $result = $service_obj->Method(...);
  $result->Att1->AttributeDefinitions

=head1 DESCRIPTION

Represents the properties of a table.

=head1 ATTRIBUTES

=head2 AttributeDefinitions => ArrayRef[L<Paws::DynamoDB::AttributeDefinition>]

  An array of I<AttributeDefinition> objects. Each of these objects
describes one attribute in the table and index key schema.

Each I<AttributeDefinition> object in this array is composed of:

=over

=item *

I<AttributeName> - The name of the attribute.

=item *

I<AttributeType> - The data type for the attribute.

=back


=head2 CreationDateTime => Str

  The date and time when the table was created, in UNIX epoch time
format.

=head2 GlobalSecondaryIndexes => ArrayRef[L<Paws::DynamoDB::GlobalSecondaryIndexDescription>]

  The global secondary indexes, if any, on the table. Each index is
scoped to a given hash key value. Each element is composed of:

=over

=item *

I<Backfilling> - If true, then the index is currently in the
backfilling phase. Backfilling occurs only when a new global secondary
index is added to the table; it is the process by which DynamoDB
populates the new index with data from the table. (This attribute does
not appear for indexes that were created during a I<CreateTable>
operation.)

=item *

I<IndexName> - The name of the global secondary index.

=item *

I<IndexSizeBytes> - The total size of the global secondary index, in
bytes. DynamoDB updates this value approximately every six hours.
Recent changes might not be reflected in this value.

=item *

I<IndexStatus> - The current status of the global secondary index:

=over

=item *

I<CREATING> - The index is being created.

=item *

I<UPDATING> - The index is being updated.

=item *

I<DELETING> - The index is being deleted.

=item *

I<ACTIVE> - The index is ready for use.

=back

=item *

I<ItemCount> - The number of items in the global secondary index.
DynamoDB updates this value approximately every six hours. Recent
changes might not be reflected in this value.

=item *

I<KeySchema> - Specifies the complete index key schema. The attribute
names in the key schema must be between 1 and 255 characters
(inclusive). The key schema must begin with the same hash key attribute
as the table.

=item *

I<Projection> - Specifies attributes that are copied (projected) from
the table into the index. These are in addition to the primary key
attributes and index key attributes, which are automatically projected.
Each attribute specification is composed of:

=over

=item *

I<ProjectionType> - One of the following:

=over

=item *

C<KEYS_ONLY> - Only the index and primary keys are projected into the
index.

=item *

C<INCLUDE> - Only the specified table attributes are projected into the
index. The list of projected attributes are in I<NonKeyAttributes>.

=item *

C<ALL> - All of the table attributes are projected into the index.

=back

=item *

I<NonKeyAttributes> - A list of one or more non-key attribute names
that are projected into the secondary index. The total count of
attributes provided in I<NonKeyAttributes>, summed across all of the
secondary indexes, must not exceed 20. If you project the same
attribute into two different indexes, this counts as two distinct
attributes when determining the total.

=back

=item *

I<ProvisionedThroughput> - The provisioned throughput settings for the
global secondary index, consisting of read and write capacity units,
along with data about increases and decreases.

=back

If the table is in the C<DELETING> state, no information about indexes
will be returned.

=head2 ItemCount => Int

  The number of items in the specified table. DynamoDB updates this value
approximately every six hours. Recent changes might not be reflected in
this value.

=head2 KeySchema => ArrayRef[L<Paws::DynamoDB::KeySchemaElement>]

  The primary key structure for the table. Each I<KeySchemaElement>
consists of:

=over

=item *

I<AttributeName> - The name of the attribute.

=item *

I<KeyType> - The key type for the attribute. Can be either C<HASH> or
C<RANGE>.

=back

For more information about primary keys, see Primary Key in the
I<Amazon DynamoDB Developer Guide>.

=head2 LatestStreamArn => Str

  The Amazon Resource Name (ARN) that uniquely identifies the latest
stream for this table.

=head2 LatestStreamLabel => Str

  A timestamp, in ISO 8601 format, for this stream.

Note that I<LatestStreamLabel> is not a unique identifier for the
stream, because it is possible that a stream from another table might
have the same timestamp. However, the combination of the following
three elements is guaranteed to be unique:

=over

=item *

the AWS customer ID.

=item *

the table name.

=item *

the I<StreamLabel>.

=back


=head2 LocalSecondaryIndexes => ArrayRef[L<Paws::DynamoDB::LocalSecondaryIndexDescription>]

  Represents one or more local secondary indexes on the table. Each index
is scoped to a given hash key value. Tables with one or more local
secondary indexes are subject to an item collection size limit, where
the amount of data within a given item collection cannot exceed 10 GB.
Each element is composed of:

=over

=item *

I<IndexName> - The name of the local secondary index.

=item *

I<KeySchema> - Specifies the complete index key schema. The attribute
names in the key schema must be between 1 and 255 characters
(inclusive). The key schema must begin with the same hash key attribute
as the table.

=item *

I<Projection> - Specifies attributes that are copied (projected) from
the table into the index. These are in addition to the primary key
attributes and index key attributes, which are automatically projected.
Each attribute specification is composed of:

=over

=item *

I<ProjectionType> - One of the following:

=over

=item *

C<KEYS_ONLY> - Only the index and primary keys are projected into the
index.

=item *

C<INCLUDE> - Only the specified table attributes are projected into the
index. The list of projected attributes are in I<NonKeyAttributes>.

=item *

C<ALL> - All of the table attributes are projected into the index.

=back

=item *

I<NonKeyAttributes> - A list of one or more non-key attribute names
that are projected into the secondary index. The total count of
attributes provided in I<NonKeyAttributes>, summed across all of the
secondary indexes, must not exceed 20. If you project the same
attribute into two different indexes, this counts as two distinct
attributes when determining the total.

=back

=item *

I<IndexSizeBytes> - Represents the total size of the index, in bytes.
DynamoDB updates this value approximately every six hours. Recent
changes might not be reflected in this value.

=item *

I<ItemCount> - Represents the number of items in the index. DynamoDB
updates this value approximately every six hours. Recent changes might
not be reflected in this value.

=back

If the table is in the C<DELETING> state, no information about indexes
will be returned.

=head2 ProvisionedThroughput => L<Paws::DynamoDB::ProvisionedThroughputDescription>

  The provisioned throughput settings for the table, consisting of read
and write capacity units, along with data about increases and
decreases.

=head2 StreamSpecification => L<Paws::DynamoDB::StreamSpecification>

  The current DynamoDB Streams configuration for the table.

=head2 TableArn => Str

  The Amazon Resource Name (ARN) that uniquely identifies the table.

=head2 TableName => Str

  The name of the table.

=head2 TableSizeBytes => Int

  The total size of the specified table, in bytes. DynamoDB updates this
value approximately every six hours. Recent changes might not be
reflected in this value.

=head2 TableStatus => Str

  The current state of the table:

=over

=item *

I<CREATING> - The table is being created.

=item *

I<UPDATING> - The table is being updated.

=item *

I<DELETING> - The table is being deleted.

=item *

I<ACTIVE> - The table is ready for use.

=back




=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DynamoDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

