
package Paws::ApiGateway::RestApis;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ApiGateway::RestApi]');
  has Position => (is => 'ro', isa => 'Str');

1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::RestApis

=head1 ATTRIBUTES

=head2 Items => ArrayRef[L<Paws::ApiGateway::RestApi>]

  An array of links to the current page of RestApi resources.
=head2 Position => Str

  


=cut

