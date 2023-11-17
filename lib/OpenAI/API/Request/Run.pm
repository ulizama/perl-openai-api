package OpenAI::API::Request::Run;

use strict;
use warnings;

use Moo;
use strictures 2;
use namespace::clean;

extends 'OpenAI::API::Request';

use Types::Standard qw(Bool Str Num Int Map);

has thread_id => (is => 'rw', isa => Str, required => 1,);
has run_id    => (is => 'rw', isa => Str, required => 1,);

sub endpoint { 
    my $self = shift;

    return 'threads/' . $self->thread_id . '/runs/' . $self->run_id;
}

sub method   { 'GET' }
sub beta     { 'assistants=v1' }
sub params_cleanup {
    my ($self, $request_params) = @_;
    delete $request_params->{thread_id};
    delete $request_params->{run_id};
}

1;

__END__

