
package Paws::SimpleWorkflow::ActivityTask;
  use Moose;
  has ActivityId => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'activityId' , required => 1);
  has ActivityType => (is => 'ro', isa => 'Paws::SimpleWorkflow::ActivityType', traits => ['Unwrapped'], xmlname => 'activityType' , required => 1);
  has Input => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'input' );
  has StartedEventId => (is => 'ro', isa => 'Int', traits => ['Unwrapped'], xmlname => 'startedEventId' , required => 1);
  has TaskToken => (is => 'ro', isa => 'Str', traits => ['Unwrapped'], xmlname => 'taskToken' , required => 1);
  has WorkflowExecution => (is => 'ro', isa => 'Paws::SimpleWorkflow::WorkflowExecution', traits => ['Unwrapped'], xmlname => 'workflowExecution' , required => 1);


### main pod documentation begin ###

=head1 NAME

Paws::SimpleWorkflow::ActivityTask

=head1 ATTRIBUTES

=head2 B<REQUIRED> ActivityId => Str

  The unique ID of the task.
=head2 B<REQUIRED> ActivityType => L<Paws::SimpleWorkflow::ActivityType>

  The type of this activity task.
=head2 Input => Str

  The inputs provided when the activity task was scheduled. The form of
the input is user defined and should be meaningful to the activity
implementation.
=head2 B<REQUIRED> StartedEventId => Int

  The ID of the C<ActivityTaskStarted> event recorded in the history.
=head2 B<REQUIRED> TaskToken => Str

  The opaque string used as a handle on the task. This token is used by
workers to communicate progress and response information back to the
system about the task.
=head2 B<REQUIRED> WorkflowExecution => L<Paws::SimpleWorkflow::WorkflowExecution>

  The workflow execution that started this activity task.


=cut

1;