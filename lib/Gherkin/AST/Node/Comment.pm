package Gherkin::AST::Node::Comment;

use Moose;
use MooseX::Types::Moose qw(Str);
extends 'Gherkin::AST::Node::Base';
with 'Gherkin::AST::Attribute::Location';

has 'text' => ( is => 'ro', isa => Str );

1;
