
package Paws::Glacier::GetVaultNotificationsOutput;
  use Moose;
  has VaultNotificationConfig => (is => 'ro', isa => 'Paws::Glacier::VaultNotificationConfig');

1;

### main pod documentation begin ###

=head1 NAME

Paws::Glacier::GetVaultNotificationsOutput

=head1 ATTRIBUTES

=head2 VaultNotificationConfig => L<Paws::Glacier::VaultNotificationConfig>

  Returns the notification configuration set on the vault.


=cut

