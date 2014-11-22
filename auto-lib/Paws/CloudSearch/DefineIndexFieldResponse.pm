
package Paws::CloudSearch::DefineIndexFieldResponse {
  use Moose;
  with 'Paws::API::ResultParser';
  has IndexField => (is => 'ro', isa => 'Paws::CloudSearch::IndexFieldStatus', required => 1);

}
1;