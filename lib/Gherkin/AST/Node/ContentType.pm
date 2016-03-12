package Gherkin::AST::Node::DocString;

use Moose;
use MooseX::Types::Moose qw(Str);
extends 'Gherkin::AST::Node::Base';
with 'Gherkin::AST::Attribute::Location';

has [ 'content', 'content_type' ] => ( is => 'ro', isa => Str );

1;
