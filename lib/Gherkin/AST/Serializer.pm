package Gherkin::AST::Serializer;

use Moose;
extends 'MooseX::Storage';

package MooseX::Storage::Base::AST;
use Moose::Role;
with 'MooseX::Storage::Basic';

around pack => sub {
    my $orig = shift;
    my $self = shift;
    my %args = @_;
    $args{'engine_traits'} ||= ['AST'];
    return $self->$orig(%args);
};

package MooseX::Storage::Engine::Trait::AST;
use Moose::Role;

around 'collapse_object' => sub {
    my ( $orig, $self, %options ) = @_;
    my $result = $self->$orig(%options);
    my $type   = delete $result->{'__CLASS__'};
    if ( $type eq 'Gherkin::AST::Node::Location' ) {

        # No type annotation for locations
    }
    elsif ( $type =~ s/Gherkin::AST::Node::(\w+).*// ) {
        $result->{'type'} = $1;
    }
    else {
        die "Can't serialize a $type";
    }
    return $result;
};

around 'expand_object' => sub {
    my ( $orig, $self, $data, %options ) = @_;
    my $type = delete $data->{'type'};
    if ($type) {
        $data->{'__CLASS__'} = 'Gherkin::AST::Node::' . $type;
    }
    elsif (exists $data->{'col'}
        && $data->{'row'}
        && ( scalar keys %$data ) == 2 )
    {
        $data->{'__CLASS__'} = 'Gherkin::AST::Node::Location';
    }
    else {
        die "Can't regenerate a class without a type!";
    }

    $self->$orig( $data, %options );
};

1;
