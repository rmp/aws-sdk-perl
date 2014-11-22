
package Paws::SimpleWorkflow::WorkflowTypeInfos {
  use Moose;
  with 'Paws::API::ResultParser';
  has nextPageToken => (is => 'ro', isa => 'Str');
  has typeInfos => (is => 'ro', isa => 'ArrayRef[Paws::SimpleWorkflow::WorkflowTypeInfo]', required => 1);

}
1;