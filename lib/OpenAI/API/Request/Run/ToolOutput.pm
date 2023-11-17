package OpenAI::API::Request::Run::ToolOutput;

use strict;
use warnings;

use Moo;
use strictures 2;
use namespace::clean;

extends 'OpenAI::API::Request';

use Types::Standard qw(Bool Str Num Int Map ArrayRef HashRef);

has thread_id    => (is => 'rw', isa => Str, required => 1,);
has run_id => (is => 'rw', isa => Str, required => 1,);
has tool_outputs    => (is => 'rw', isa => ArrayRef [HashRef], required => 1);

sub endpoint { 
    my $self = shift;

    return 'threads/' . $self->thread_id . '/runs/' . $self->run_id . '/submit_tool_outputs';
}

sub method   { 'POST' }
sub beta     { 'assistants=v1' }
sub params_cleanup {
    my ($self, $request_params) = @_;
    delete $request_params->{thread_id};
    delete $request_params->{run_id};
}


1;

__END__

