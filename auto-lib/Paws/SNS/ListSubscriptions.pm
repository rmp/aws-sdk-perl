
package Paws::SNS::ListSubscriptions {
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSubscriptions');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SNS::ListSubscriptionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListSubscriptionsResult');
}
1;