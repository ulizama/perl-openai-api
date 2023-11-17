package OpenAI::API::Request::Assistant::Modify;

use strict;
use warnings;

use Moo;
use strictures 2;
use namespace::clean;

extends 'OpenAI::API::Request';

use Types::Standard qw(Bool Str Num Int Map ArrayRef HashRef);

has assistant_id => (is => 'rw', isa => Str, required => 1,);
has model        => (is => 'rw', isa => Str, default => 'gpt-3.5-turbo-1106');
has name         => (is => 'rw', isa => Str,);
has description  => (is => 'rw', isa => Str,);
has instructions => (is => 'rw', isa => Str,);
has tools    => (is => 'rw', isa => ArrayRef [HashRef], default => sub { [] });
has file_ids => (is => 'rw', isa => ArrayRef [Str],     default => sub { [] });
has metadata => (is => 'rw', isa => Map [Int, Int],);

sub endpoint { 
    my $self = shift;

    return 'assistants/' . $self->assistant_id;
}

sub method   { 'POST' }
sub beta     { 'assistants=v1' }
sub params_cleanup {
    my ($self, $request_params) = @_;
    delete $request_params->{assistant_id};
}


1;

__END__

