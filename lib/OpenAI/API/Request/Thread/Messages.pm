package OpenAI::API::Request::Thread::Messages;

use strict;
use warnings;

use Moo;
use strictures 2;
use namespace::clean;

extends 'OpenAI::API::Request';

use Types::Standard qw(Bool Str Num Int Map ArrayRef HashRef);

has thread_id => (is => 'rw', isa => Str, required => 1,);
has limit     => (is => 'rw', isa => Int, default  => 20);
has order     => (is => 'rw', isa => Str, default  => 'desc');
has after     => (is => 'rw', isa => Str);
has before    => (is => 'rw', isa => Str);

sub endpoint { 
    my $self = shift;

    return 'threads/' . $self->thread_id . '/messages';
}

sub method   { 'GET' }
sub beta     { 'assistants=v1' }
sub params_cleanup {
    my ($self, $request_params) = @_;
    delete $request_params->{thread_id};
}

1;

__END__

