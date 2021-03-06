
package Paws::Route53Domains::UpdateDomainContact;
  use Moose;
  has AdminContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail');
  has DomainName => (is => 'ro', isa => 'Str', required => 1);
  has RegistrantContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail');
  has TechContact => (is => 'ro', isa => 'Paws::Route53Domains::ContactDetail');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDomainContact');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53Domains::UpdateDomainContactResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Domains::UpdateDomainContact - Arguments for method UpdateDomainContact on Paws::Route53Domains

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDomainContact on the 
Amazon Route 53 Domains service. Use the attributes of this class
as arguments to method UpdateDomainContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDomainContact.

As an example:

  $service_obj->UpdateDomainContact(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 AdminContact => L<Paws::Route53Domains::ContactDetail>

  Provides detailed contact information.

Type: Complex

Children: C<FirstName>, C<MiddleName>, C<LastName>, C<ContactType>,
C<OrganizationName>, C<AddressLine1>, C<AddressLine2>, C<City>,
C<State>, C<CountryCode>, C<ZipCode>, C<PhoneNumber>, C<Email>, C<Fax>,
C<ExtraParams>

Required: Yes

=head2 B<REQUIRED> DomainName => Str

  The name of a domain.

Type: String

Default: None

Constraints: The domain name can contain only the letters a through z,
the numbers 0 through 9, and hyphen (-). Internationalized Domain Names
are not supported.

Required: Yes

=head2 RegistrantContact => L<Paws::Route53Domains::ContactDetail>

  Provides detailed contact information.

Type: Complex

Children: C<FirstName>, C<MiddleName>, C<LastName>, C<ContactType>,
C<OrganizationName>, C<AddressLine1>, C<AddressLine2>, C<City>,
C<State>, C<CountryCode>, C<ZipCode>, C<PhoneNumber>, C<Email>, C<Fax>,
C<ExtraParams>

Required: Yes

=head2 TechContact => L<Paws::Route53Domains::ContactDetail>

  Provides detailed contact information.

Type: Complex

Children: C<FirstName>, C<MiddleName>, C<LastName>, C<ContactType>,
C<OrganizationName>, C<AddressLine1>, C<AddressLine2>, C<City>,
C<State>, C<CountryCode>, C<ZipCode>, C<PhoneNumber>, C<Email>, C<Fax>,
C<ExtraParams>

Required: Yes



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDomainContact in L<Paws::Route53Domains>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

