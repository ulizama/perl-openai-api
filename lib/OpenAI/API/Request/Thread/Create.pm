package OpenAI::API::Request::Thread::Create;

use strict;
use warnings;

use Moo;
use strictures 2;
use namespace::clean;

extends 'OpenAI::API::Request';

use Types::Standard qw(Bool Str Num Int Map ArrayRef HashRef);

has messages => (is => 'rw', isa => ArrayRef [HashRef], default => sub { [] });
has metadata => (is => 'rw', isa => Map [Int, Int],);

sub endpoint { 'threads' }
sub method   { 'POST' }
sub beta     { 'assistants=v1' }


1;

__END__

