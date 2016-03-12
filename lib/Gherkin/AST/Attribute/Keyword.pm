package Gherkin::AST::Attribute::Keyword;

use Moose::Role;

has 'keyword' => (
    is       => 'ro',
    isa      => 'Str',
    required => 1,
);

1;
