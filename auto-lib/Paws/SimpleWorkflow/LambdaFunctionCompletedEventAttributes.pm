package Paws::SimpleWorkflow::LambdaFunctionCompletedEventAttributes;
  use Moose;
  has Result => (is => 'ro', isa => 'Str', xmlname => 'result', request_name => 'result', traits => ['Unwrapped','NameInRequest']);
  has ScheduledEventId => (is => 'ro', isa => 'Int', xmlname => 'scheduledEventId', request_name => 'scheduledEventId', traits => ['Unwrapped','NameInRequest'], required => 1);
  has StartedEventId => (is => 'ro', isa => 'Int', xmlname => 'startedEventId', request_name => 'startedEventId', traits => ['Unwrapped','NameInRequest'], required => 1);
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::LambdaFunctionCompletedEventAttributes

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::SimpleWorkflow::LambdaFunctionCompletedEventAttributes object:

  $service_obj->Method(Att1 => { Result => $value, ..., StartedEventId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::SimpleWorkflow::LambdaFunctionCompletedEventAttributes object:

  $result = $service_obj->Method(...);
  $result->Att1->Result

=head1 DESCRIPTION

Provides details for the C<LambdaFunctionCompleted> event.

=head1 ATTRIBUTES

=head2 Result => Str

  The result of the function execution (if any).

=head2 B<REQUIRED> ScheduledEventId => Int

  The ID of the C<LambdaFunctionScheduled> event that was recorded when
this AWS Lambda function was scheduled. This information can be useful
for diagnosing problems by tracing back the chain of events leading up
to this event.

=head2 B<REQUIRED> StartedEventId => Int

  The ID of the C<LambdaFunctionStarted> event recorded in the history.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::SimpleWorkflow>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

