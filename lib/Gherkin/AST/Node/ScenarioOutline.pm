package Gherkin::AST::Node::ScenarioOutline;

use Moose;
use MooseX::Types::Moose qw(ArrayRef);
use Gherkin::AST::Types qw(Examples);
extends 'Gherkin::AST::Node::ScenarioDefinition';
with 'Gherkin::AST::Attribute::Tags';

has 'examples' => ( isa => ArrayRef [Examples], is => 'ro' );

1;
