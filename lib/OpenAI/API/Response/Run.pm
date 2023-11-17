package OpenAI::API::Response::Run;

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

has 'assistant_id' => (
    is       => 'ro',
    required => 1,
);

has 'status' => (
    is       => 'ro',
    required => 1,
);

has 'required_action' => (
    is       => 'ro',
    required => 0,
);

has 'last_error' => (
    is       => 'ro',
    required => 0,
);

has 'expires_at' => (
    is       => 'ro',
    required => 1,
);

has 'started_at' => (
    is       => 'ro',
    required => 0,
);

has 'cancelled_at' => (
    is       => 'ro',
    required => 0,
);

has 'failed_at' => (
    is       => 'ro',
    required => 0,
);

has 'completed_at' => (
    is       => 'ro',
    required => 0,
);

has 'model' => (
    is       => 'ro',
    required => 1,
);

has 'instructions' => (
    is       => 'ro',
    required => 1,
);

has 'tools' => (
    is       => 'ro',
    required => 1,
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
