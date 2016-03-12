package Gherkin::AST::Attribute::Tags;

use Moose::Role;
use MooseX::Types::Moose qw(ArrayRef);
use Gherkin::AST::Types qw(Tag);

has 'tags' => (
    is      => 'ro',
    isa     => ArrayRef [Tag],
    default => sub { [] },
);

1;
