
package Paws::RDS::CopyOptionGroupResult {
  use Moose;
  with 'Paws::API::ResultParser';
  has OptionGroup => (is => 'ro', isa => 'Paws::RDS::OptionGroup');

}
1;