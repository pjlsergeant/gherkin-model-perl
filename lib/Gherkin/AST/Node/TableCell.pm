package Gherkin::AST::Node::TableCell;

use Moose;
use MooseX::Types::Moose qw(Str);
extends 'Gherkin::AST::Node::Base';
with 'Gherkin::AST::Attribute::Location';

has 'value' => ( is => 'ro', isa => Str );

1;
