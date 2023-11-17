package OpenAI::API::Request::Assistant;

use strict;
use warnings;

use Moo;
use strictures 2;
use namespace::clean;

extends 'OpenAI::API::Request';

use Types::Standard qw(Bool Str Num Int Map);

has assistant_id => (is => 'rw', isa => Str, required => 1,);

sub endpoint { 
    my $self = shift;

    return 'assistants/' . $self->assistant_id;
}

sub method   { 'GET' }
sub beta     { 'assistants=v1' }

1;

__END__

