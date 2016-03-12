package Gherkin::AST::Node::ScenarioDefinition;

use Moose;
use MooseX::Types::Moose qw(ArrayRef);
use Gherkin::AST::Types qw(Step);
extends 'Gherkin::AST::Node::Base';
with 'Gherkin::AST::Attribute::Location';
with 'Gherkin::AST::Attribute::Keyword';
with 'Gherkin::AST::Attribute::Name';
with 'Gherkin::AST::Attribute::Description';

has 'steps' => ( isa => ArrayRef [Step], is => 'ro', default => sub { [] } );

1;
