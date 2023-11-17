package OpenAI::API::Response::Thread;

use strict;
use warnings;

use Moo;
use strictures 2;
use namespace::clean;

extends 'OpenAI::API::Response';

has 'id' => (
    is       => 'ro',
    required => 1,
);

has 'object' => (
    is       => 'ro',
    required => 1,
);

has 'created_at' => (
    is       => 'ro',
    required => 1,
);

has 'metadata' => (
    is       => 'ro',
    required => 0,
);

1;
