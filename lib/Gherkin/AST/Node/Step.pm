package Gherkin::AST::Node::Step;

use Moose;
use MooseX::Types::Moose qw(Str);
use Gherkin::AST::Types qw(StepArgument);
extends 'Gherkin::AST::Node::Base';
with 'Gherkin::AST::Attribute::Location';
with 'Gherkin::AST::Attribute::Keyword';

has 'text'     => ( isa => Str,          is => 'ro' );
has 'argument' => ( isa => StepArgument, is => 'ro' );

1;
