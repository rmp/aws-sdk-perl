package Paws::DynamoDB::ExpressionAttributeNameMap {
  use Moose;
  with 'Paws::API::StrToStrMapParser';
  has Map => (is => 'ro', isa => 'HashRef[Str]');
}
1;
