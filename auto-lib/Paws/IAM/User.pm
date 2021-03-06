package Paws::IAM::User;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has CreateDate => (is => 'ro', isa => 'Str', required => 1);
  has PasswordLastUsed => (is => 'ro', isa => 'Str');
  has Path => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);
  has UserName => (is => 'ro', isa => 'Str', required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::User

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::IAM::User object:

  $service_obj->Method(Att1 => { Arn => $value, ..., UserName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::IAM::User object:

  $result = $service_obj->Method(...);
  $result->Att1->Arn

=head1 DESCRIPTION

Contains information about an IAM user entity.

This data type is used as a response element in the following actions:

=over

=item *

CreateUser

=item *

GetUser

=item *

ListUsers

=back


=head1 ATTRIBUTES

=head2 B<REQUIRED> Arn => Str

  The Amazon Resource Name (ARN) that identifies the user. For more
information about ARNs and how to use ARNs in policies, see IAM
Identifiers in the I<Using IAM> guide.

=head2 B<REQUIRED> CreateDate => Str

  The date and time, in ISO 8601 date-time format, when the user was
created.

=head2 PasswordLastUsed => Str

  The date and time, in ISO 8601 date-time format, when the user's
password was last used to sign in to an AWS website. For a list of AWS
websites that capture a user's last sign-in time, see the Credential
Reports topic in the I<Using IAM> guide. If a password is used more
than once in a five-minute span, only the first use is returned in this
field. This field is null (not present) when:

=over

=item *

The user does not have a password

=item *

The password exists but has never been used (at least not since IAM
started tracking this information on October 20th, 2014

=item *

there is no sign-in data associated with the user

=back

This value is returned only in the GetUser and ListUsers actions.

=head2 B<REQUIRED> Path => Str

  The path to the user. For more information about paths, see IAM
Identifiers in the I<Using IAM> guide.

=head2 B<REQUIRED> UserId => Str

  The stable and unique string identifying the user. For more information
about IDs, see IAM Identifiers in the I<Using IAM> guide.

=head2 B<REQUIRED> UserName => Str

  The friendly name identifying the user.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::IAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

