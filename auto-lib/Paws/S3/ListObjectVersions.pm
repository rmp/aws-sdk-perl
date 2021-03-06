
package Paws::S3::ListObjectVersions;
  use Moose;
  has Bucket => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Bucket' , required => 1);
  has Delimiter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'delimiter' );
  has EncodingType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'encoding-type' );
  has KeyMarker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'key-marker' );
  has MaxKeys => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'max-keys' );
  has Prefix => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'prefix' );
  has VersionIdMarker => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'version-id-marker' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListObjectVersions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/{Bucket}?versions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::S3::ListObjectVersionsOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::ListObjectVersionsOutput

=head1 ATTRIBUTES

=head2 B<REQUIRED> Bucket => Str

  
=head2 Delimiter => Str

  A delimiter is a character you use to group keys.
=head2 EncodingType => Str

  
=head2 KeyMarker => Str

  Specifies the key to start with when listing objects in a bucket.
=head2 MaxKeys => Int

  Sets the maximum number of keys returned in the response. The response
might contain fewer keys but will never contain more.
=head2 Prefix => Str

  Limits the response to keys that begin with the specified prefix.
=head2 VersionIdMarker => Str

  Specifies the object version you want to start listing from.


=cut

