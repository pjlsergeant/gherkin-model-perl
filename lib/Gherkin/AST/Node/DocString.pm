package Gherkin::AST::Node::DocString;

use Moose;
use MooseX::Types::Moose qw(Str);
extends 'Gherkin::AST::Node::StepArgument';
with 'Gherkin::AST::Attribute::Location';

has [qw/content contentType/] => ( is => 'ro', isa => Str );

1;
