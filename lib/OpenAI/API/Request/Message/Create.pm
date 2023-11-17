package OpenAI::API::Request::Message::Create;

use strict;
use warnings;

use Moo;
use strictures 2;
use namespace::clean;

extends 'OpenAI::API::Request';

use Types::Standard qw(Bool Str Num Int Map ArrayRef HashRef);

has thread_id => (is => 'rw', isa => Str, required => 1,);
has role      => (is => 'rw', isa => Str, required => 1,);
has content   => (is => 'rw', isa => Str, required => 1,);
has file_ids  => (is => 'rw', isa => ArrayRef [Str], default => sub { [] });
has metadata  => (is => 'rw', isa => Map [Int, Int],);

sub endpoint { 
    my $self = shift;

    return 'threads/' . $self->thread_id . '/messages';
}

sub method   { 'POST' }
sub beta     { 'assistants=v1' }
sub params_cleanup {
    my ($self, $request_params) = @_;
    delete $request_params->{thread_id};
}

1;

__END__

