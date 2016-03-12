package Gherkin::AST::Node::TableRow;

use Moose;
use MooseX::Types::Moose qw(ArrayRef);
use Gherkin::AST::Types qw(TableCell);
extends 'Gherkin::AST::Node::Base';
with 'Gherkin::AST::Attribute::Location';

has 'cells' => ( is => 'ro', isa => ArrayRef [TableCell] );

1;
