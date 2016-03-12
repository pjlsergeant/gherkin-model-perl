package Gherkin::AST::Node::Base;

use Moose;
use MooseX::StrictConstructor;
use MooseX::Types::Moose qw(ArrayRef Str);
use Gherkin::AST::Serializer;

with Storage( base => 'AST', format => 'JSON' );

1;
