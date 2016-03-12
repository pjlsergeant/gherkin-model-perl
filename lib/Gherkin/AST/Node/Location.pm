package Gherkin::AST::Node::Location;

use Moose;
use MooseX::Types::Moose qw(Int);
extends 'Gherkin::AST::Node::Base';

has [ 'line', 'column' ] => ( is => 'ro', isa => Int );

1;
