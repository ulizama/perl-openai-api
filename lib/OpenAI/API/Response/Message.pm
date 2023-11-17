package OpenAI::API::Response::Message;

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

has 'thread_id' => (
    is       => 'ro',
    required => 1,
);

has 'role' => (
    is       => 'ro',
    required => 1,
);

has 'content' => (
    is       => 'ro',
    required => 1,
);

has 'assistant_id' => (
    is       => 'ro',
    required => 0,
);

has 'run_id' => (
    is       => 'ro',
    required => 0,
);

has 'file_ids' => (
    is       => 'ro',
    required => 1,
);

has 'metadata' => (
    is       => 'ro',
    required => 0,
);

1;
