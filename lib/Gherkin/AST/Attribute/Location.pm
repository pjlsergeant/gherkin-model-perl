package Gherkin::AST::Attribute::Location;

use Moose::Role;
use Gherkin::AST::Types qw(Location);

has 'location' => (
    is       => 'ro',
    isa      => Location,
    required => 1,
);

1;
