package Gherkin::AST::Node::DataTable;

use Moose;
use MooseX::Types::Moose qw(ArrayRef);
use Gherkin::AST::Types qw(TableRow);

extends 'Gherkin::AST::Node::StepArgument';
with 'Gherkin::AST::Attribute::Location';

has 'header' => ( is => 'ro', isa => TableRow );
has 'rows' => ( is => 'ro', isa => ArrayRef [TableRow] );

1;
