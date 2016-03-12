package Gherkin::AST::Types;

use strict;
use warnings;

our @node_names = (
    qw/
        Background
        Comment
        ContentType
        DataTable
        DocString
        Examples
        Feature
        Location
        Scenario
        ScenarioDefinition
        ScenarioOutline
        Step
        StepArgument
        TableCell
        TableRow
        Tag
        /
);

require MooseX::Types;
MooseX::Types->import( -declare => [@node_names] );

eval "class_type( $_, { class => 'Gherkin::AST::Node::$_'} )" for @node_names;

1;
