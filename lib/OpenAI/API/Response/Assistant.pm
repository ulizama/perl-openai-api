package OpenAI::API::Response::Assistant;

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

has 'name' => (
    is       => 'ro',
    required => 0,
);

has 'description' => (
    is       => 'ro',
    required => 0,
);

has 'model' => (
    is       => 'ro',
    required => 1,
);

has 'instructions' => (
    is       => 'ro',
    required => 0,
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
    required => 1,
);

1;
