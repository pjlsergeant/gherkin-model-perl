package Gherkin::AST::Reader;

use strict;
use warnings;

use Data::Dumper;
use Module::Runtime qw/use_module/;
use Gherkin::Parser;
use Gherkin::AST::Node::Location;

sub read {
    my ( $class, $to_parse ) = @_;
    my $parser = Gherkin::Parser->new();
    my $ast    = $parser->parse($to_parse);

    my $feature = $class->_make_node(%$ast);
}

sub _make_node {
    my ( $class, %node ) = @_;

    my $type
        = "Gherkin::AST::Node::"
        . ( delete $node{'type'}
            || die "No type in AST node: " . Data::Dumper::Dumper( \%node ) );
    use_module $type;

    # Replace any children that are objects with equivalent nodes
    for my $key ( keys %node ) {
        if ( $key eq 'location' ) {
            $node{$key}
                = Gherkin::AST::Node::Location->new( %{ $node{$key} } );
        }
        elsif ( ref $node{$key} eq 'HASH' ) {
            $node{$key} = $class->_make_node( %{ $node{$key} } );
        }
        elsif ( ref $node{$key} eq 'ARRAY' ) {
            $node{$key}
                = [ map { $class->_make_node( %{$_} ) } @{ $node{$key} } ];
        }
    }

    # Instantiate
    return $type->new(%node);
}

1;
