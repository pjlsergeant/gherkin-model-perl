package Gherkin::AST::Node::Feature;

use Moose;
use MooseX::Types::Moose qw(ArrayRef Str);
use Gherkin::AST::Types qw(Comment Background ScenarioDefinition);
extends 'Gherkin::AST::Node::Base';
with 'Gherkin::AST::Attribute::Location';
with 'Gherkin::AST::Attribute::Name';
with 'Gherkin::AST::Attribute::Tags';
with 'Gherkin::AST::Attribute::Keyword';
with 'Gherkin::AST::Attribute::Description';

has 'language' => (
    is  => 'ro',
    isa => Str,
);

has 'comments' => (
    is      => 'ro',
    isa     => ArrayRef [Comment],
    default => sub { [] },
);

has 'background' => (
    is  => 'ro',
    isa => Background,
);

has 'scenarioDefinitions' => (
    is      => 'ro',
    isa     => ArrayRef [ScenarioDefinition],
    default => sub { [] },
);

1;
