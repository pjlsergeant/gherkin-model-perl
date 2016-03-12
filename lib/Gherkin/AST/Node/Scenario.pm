package Gherkin::AST::Node::Scenario;

use Moose;
extends 'Gherkin::AST::Node::ScenarioDefinition';
with 'Gherkin::AST::Attribute::Tags';

1;
