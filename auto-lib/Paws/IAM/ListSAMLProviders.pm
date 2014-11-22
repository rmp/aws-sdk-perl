
package Paws::IAM::ListSAMLProviders {
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSAMLProviders');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IAM::ListSAMLProvidersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'ListSAMLProvidersResult');
}
1;