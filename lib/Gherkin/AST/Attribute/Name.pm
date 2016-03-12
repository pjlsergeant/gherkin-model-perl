package Gherkin::AST::Attribute::Name;

use Moose::Role;

has 'name' => (
    is      => 'ro',
    isa     => 'Str',
    default => '',
);

1;
