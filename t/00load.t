# -*- perl -*-

# t/001_load.t - check module loading and create testing directory

use Test::More tests => 2;

BEGIN { use_ok( 'DateTime::Format::Baby' ); }

my $object = DateTime::Format::Baby->new ();
isa_ok ($object, 'DateTime::Format::Baby');


