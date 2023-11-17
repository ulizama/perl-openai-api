package OpenAI::API::Response::Thread::Messages;

use strict;
use warnings;

use Moo;
use strictures 2;
use namespace::clean;

extends 'OpenAI::API::Response';

has 'object' => (
    is       => 'ro',
    required => 1,
);

has 'data' => (
    is       => 'ro',
    required => 0,
);

has 'first_id' => (
    is       => 'ro',
    required => 0,
);

has 'last_id' => (
    is       => 'ro',
    required => 0,
);

has 'has_more' => (
    is       => 'ro',
    required => 0,
);

1;
