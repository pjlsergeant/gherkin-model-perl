package Gherkin::AST::Node::Tag;

use Moose;
use MooseX::Types::Moose qw(Str);
extends 'Gherkin::AST::Node::Base';
with 'Gherkin::AST::Attribute::Location';

has 'name' => ( is => 'ro', isa => Str, required => 1 );

1;
