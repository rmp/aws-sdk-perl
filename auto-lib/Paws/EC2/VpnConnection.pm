package Paws::EC2::VpnConnection {
  use Moose;
  has CustomerGatewayConfiguration => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'customerGatewayConfiguration');
  has CustomerGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'customerGatewayId');
  has Options => (is => 'ro', isa => 'Paws::EC2::VpnConnectionOptions', traits => ['Unwrapped'], xmlname => 'options');
  has Routes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VpnStaticRoute]', traits => ['Unwrapped'], xmlname => 'routes');
  has State => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'state');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', traits => ['Unwrapped'], xmlname => 'tagSet');
  has Type => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'type');
  has VgwTelemetry => (is => 'ro', isa => 'ArrayRef[Paws::EC2::VgwTelemetry]', traits => ['Unwrapped'], xmlname => 'vgwTelemetry');
  has VpnConnectionId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpnConnectionId');
  has VpnGatewayId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'vpnGatewayId');
}
1;
