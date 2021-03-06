
package Paws::CloudWatch::PutMetricData;
  use Moose;
  has MetricData => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatch::MetricDatum]', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMetricData');
  class_has _returns => (isa => 'Str', is => 'ro');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatch::PutMetricData - Arguments for method PutMetricData on Paws::CloudWatch

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMetricData on the 
Amazon CloudWatch service. Use the attributes of this class
as arguments to method PutMetricData.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMetricData.

As an example:

  $service_obj->PutMetricData(Att1 => $value1, Att2 => $value2, ...);

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.

=head1 ATTRIBUTES

=head2 B<REQUIRED> MetricData => ArrayRef[L<Paws::CloudWatch::MetricDatum>]

  A list of data describing the metric.

=head2 B<REQUIRED> Namespace => Str

  The namespace for the metric data.



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMetricData in L<Paws::CloudWatch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: https://github.com/pplu/aws-sdk-perl

Please report bugs to: https://github.com/pplu/aws-sdk-perl/issues

=cut

