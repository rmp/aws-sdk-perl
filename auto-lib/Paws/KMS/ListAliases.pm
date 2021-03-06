
package Paws::KMS::ListAliases;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has Marker => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAliases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::KMS::ListAliasesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::KMS::ListAliases - Arguments for method ListAliases on Paws::KMS

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAliases on the 
AWS Key Management Service service. Use the attributes of this class
as arguments to method ListAliases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAliases.

As an example:

  $service_obj->ListAliases(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 Limit => Int

  When paginating results, specify the maximum number of items to return
in the response. If additional items exist beyond the number you
specify, the C<Truncated> element in the response is set to true.

This value is optional. If you include a value, it must be between 1
and 100, inclusive. If you do not include a value, it defaults to 50.

=head2 Marker => Str

  Use this parameter only when paginating results and only in a
subsequent request after you've received a response with truncated
results. Set it to the value of C<NextMarker> from the response you
just received.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAliases in L<Paws::KMS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

