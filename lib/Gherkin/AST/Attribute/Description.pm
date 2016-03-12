package Gherkin::AST::Attribute::Description;

use Moose::Role;

has 'description' => (
    is  => 'ro',
    isa => 'Str',
);

1;
