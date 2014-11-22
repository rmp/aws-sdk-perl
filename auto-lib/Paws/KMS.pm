
use Paws::API;


package Paws::KMS {
  use Moose;
  has service => (is => 'ro', isa => 'Str', default => 'kms');
  has version => (is => 'ro', isa => 'Str', default => '2014-11-01');
  has target_prefix => (is => 'ro', isa => 'Str', default => 'TrentService');
  has json_version => (is => 'ro', isa => 'Str', default => "1.1");

  use MooseX::ClassAttribute;
  class_has endpoint_role => (is => 'ro', isa => 'Str', default => 'Paws::API::RegionalEndpointCaller');
  class_has signature_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::V4Signature');
  class_has parameter_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonCaller');
  class_has response_role => (is => 'ro', isa => 'Str', default => 'Paws::Net::JsonResponse');

  
  sub CreateAlias {
    my $self = shift;
    return $self->do_call('Paws::KMS::CreateAlias', @_);
  }
  sub CreateGrant {
    my $self = shift;
    return $self->do_call('Paws::KMS::CreateGrant', @_);
  }
  sub CreateKey {
    my $self = shift;
    return $self->do_call('Paws::KMS::CreateKey', @_);
  }
  sub Decrypt {
    my $self = shift;
    return $self->do_call('Paws::KMS::Decrypt', @_);
  }
  sub DeleteAlias {
    my $self = shift;
    return $self->do_call('Paws::KMS::DeleteAlias', @_);
  }
  sub DescribeKey {
    my $self = shift;
    return $self->do_call('Paws::KMS::DescribeKey', @_);
  }
  sub DisableKey {
    my $self = shift;
    return $self->do_call('Paws::KMS::DisableKey', @_);
  }
  sub DisableKeyRotation {
    my $self = shift;
    return $self->do_call('Paws::KMS::DisableKeyRotation', @_);
  }
  sub EnableKey {
    my $self = shift;
    return $self->do_call('Paws::KMS::EnableKey', @_);
  }
  sub EnableKeyRotation {
    my $self = shift;
    return $self->do_call('Paws::KMS::EnableKeyRotation', @_);
  }
  sub Encrypt {
    my $self = shift;
    return $self->do_call('Paws::KMS::Encrypt', @_);
  }
  sub GenerateDataKey {
    my $self = shift;
    return $self->do_call('Paws::KMS::GenerateDataKey', @_);
  }
  sub GenerateDataKeyWithoutPlaintext {
    my $self = shift;
    return $self->do_call('Paws::KMS::GenerateDataKeyWithoutPlaintext', @_);
  }
  sub GenerateRandom {
    my $self = shift;
    return $self->do_call('Paws::KMS::GenerateRandom', @_);
  }
  sub GetKeyPolicy {
    my $self = shift;
    return $self->do_call('Paws::KMS::GetKeyPolicy', @_);
  }
  sub GetKeyRotationStatus {
    my $self = shift;
    return $self->do_call('Paws::KMS::GetKeyRotationStatus', @_);
  }
  sub ListAliases {
    my $self = shift;
    return $self->do_call('Paws::KMS::ListAliases', @_);
  }
  sub ListGrants {
    my $self = shift;
    return $self->do_call('Paws::KMS::ListGrants', @_);
  }
  sub ListKeyPolicies {
    my $self = shift;
    return $self->do_call('Paws::KMS::ListKeyPolicies', @_);
  }
  sub ListKeys {
    my $self = shift;
    return $self->do_call('Paws::KMS::ListKeys', @_);
  }
  sub PutKeyPolicy {
    my $self = shift;
    return $self->do_call('Paws::KMS::PutKeyPolicy', @_);
  }
  sub ReEncrypt {
    my $self = shift;
    return $self->do_call('Paws::KMS::ReEncrypt', @_);
  }
  sub RetireGrant {
    my $self = shift;
    return $self->do_call('Paws::KMS::RetireGrant', @_);
  }
  sub RevokeGrant {
    my $self = shift;
    return $self->do_call('Paws::KMS::RevokeGrant', @_);
  }
  sub UpdateKeyDescription {
    my $self = shift;
    return $self->do_call('Paws::KMS::UpdateKeyDescription', @_);
  }
}
1;
