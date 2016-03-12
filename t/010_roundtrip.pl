#!perl

use strict;
use warnings;

use Test::More;
use Cpanel::JSON::XS qw/decode_json/;
use Path::Class qw/file dir/;

use_ok('Gherkin::AST::Reader');

my @inputs = grep {m/\.feature$/} dir(qw!t acceptance_tests!)->children;
for my $input (@inputs) {
    my $result = Gherkin::AST::Reader->read( '' . $input )->pack();
    my $expected
        = decode_json
        scalar $input->parent->file( $input->basename . '.ast.json' )->slurp;
    is_deeply( $result, $expected, $input );
}

done_testing();
