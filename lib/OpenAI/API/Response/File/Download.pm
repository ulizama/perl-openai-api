package OpenAI::API::Response::File::Download;

use strict;
use warnings;

use Moo;
use strictures 2;
use namespace::clean;

extends 'OpenAI::API::Response';

has 'contents' => (
    is       => 'ro',
    required => 1,
);

1;
