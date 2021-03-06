package Paws::DeviceFarm::ScheduleRunConfiguration;
  use Moose;
  has AuxiliaryApps => (is => 'ro', isa => 'ArrayRef[Str]', xmlname => 'auxiliaryApps', request_name => 'auxiliaryApps', traits => ['Unwrapped','NameInRequest']);
  has BillingMethod => (is => 'ro', isa => 'Str', xmlname => 'billingMethod', request_name => 'billingMethod', traits => ['Unwrapped','NameInRequest']);
  has ExtraDataPackageArn => (is => 'ro', isa => 'Str', xmlname => 'extraDataPackageArn', request_name => 'extraDataPackageArn', traits => ['Unwrapped','NameInRequest']);
  has Locale => (is => 'ro', isa => 'Str', xmlname => 'locale', request_name => 'locale', traits => ['Unwrapped','NameInRequest']);
  has Location => (is => 'ro', isa => 'Paws::DeviceFarm::Location', xmlname => 'location', request_name => 'location', traits => ['Unwrapped','NameInRequest']);
  has NetworkProfileArn => (is => 'ro', isa => 'Str', xmlname => 'networkProfileArn', request_name => 'networkProfileArn', traits => ['Unwrapped','NameInRequest']);
  has Radios => (is => 'ro', isa => 'Paws::DeviceFarm::Radios', xmlname => 'radios', request_name => 'radios', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::DeviceFarm::ScheduleRunConfiguration

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::DeviceFarm::ScheduleRunConfiguration object:

  $service_obj->Method(Att1 => { AuxiliaryApps => $value, ..., Radios => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::DeviceFarm::ScheduleRunConfiguration object:

  $result = $service_obj->Method(...);
  $result->Att1->AuxiliaryApps

=head1 DESCRIPTION

Represents the settings for a run. Includes things like location, radio
states, auxiliary apps, and network profiles.

=head1 ATTRIBUTES

=head2 AuxiliaryApps => ArrayRef[Str]

  A list of auxiliary apps for the run.

=head2 BillingMethod => Str

  Specifies the billing method for a test run: C<metered> or
C<unmetered>. If the parameter is not specified, the default value is
C<unmetered>.

=head2 ExtraDataPackageArn => Str

  The ARN of the extra data for the run. The extra data is a .zip file
that AWS Device Farm will extract to external data for Android or the
app's sandbox for iOS.

=head2 Locale => Str

  Information about the locale that is used for the run.

=head2 Location => L<Paws::DeviceFarm::Location>

  Information about the location that is used for the run.

=head2 NetworkProfileArn => Str

  Reserved for internal use.

=head2 Radios => L<Paws::DeviceFarm::Radios>

  Information about the radio states for the run.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::DeviceFarm>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

