package Paws::ApiGateway::StageKey;
  use Moose;
  has RestApiId => (is => 'ro', isa => 'Str', xmlname => 'restApiId', request_name => 'restApiId', traits => ['Unwrapped','NameInRequest']);
  has StageName => (is => 'ro', isa => 'Str', xmlname => 'stageName', request_name => 'stageName', traits => ['Unwrapped','NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::StageKey

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::ApiGateway::StageKey object:

  $service_obj->Method(Att1 => { RestApiId => $value, ..., StageName => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::ApiGateway::StageKey object:

  $result = $service_obj->Method(...);
  $result->Att1->RestApiId

=head1 DESCRIPTION

A reference to a unique stage identified in the format
C<{restApiId}/{stage}>.

=head1 ATTRIBUTES

=head2 RestApiId => Str

  A list of Stage resources that are associated with the ApiKey resource.

=head2 StageName => Str

  The stage name in the RestApi that the stage key references.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::ApiGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

