package Gherkin::AST::Node::Examples;

use Moose;
use MooseX::Types::Moose qw(ArrayRef);
use Gherkin::AST::Types qw(TableRow);
extends 'Gherkin::AST::Node::Base';
with 'Gherkin::AST::Attribute::Location';
with 'Gherkin::AST::Attribute::Keyword';
with 'Gherkin::AST::Attribute::Name';
with 'Gherkin::AST::Attribute::Description';
with 'Gherkin::AST::Attribute::Tags';

has 'tableHeader' => ( is => 'ro', isa => TableRow );
has 'tableBody' => ( is => 'ro', isa => ArrayRef [TableRow] );

1;
