
package Paws::Route53Domains::EnableDomainAutoRenew {
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableDomainAutoRenew');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::EnableDomainAutoRenewResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
}
1;