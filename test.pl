# Before `make install' is performed this script should be runnable with
# `make test'. After `make install' it should work as `perl test.pl'

######################### We start with some black magic to print on failure.

# Change 1..1 below to 1..last_test_to_print .
# (It may become useful if the test is moved to ./t subdirectory.)

BEGIN { $| = 1; print "1..10\n"; }
END {print "not ok 1\n" unless $loaded;}
use DateTime::Format::Baby;
use DateTime;
$loaded = 1;
print "ok 1\n";

######################### End of black magic.

# Insert your test code below (better if it prints "ok 13"
# (correspondingly "not ok 13") depending on the success of chunk 13
# of the test code):

$dt = DateTime->new( year   => 1964,
					 month  => 10,
					 day    => 16,
					 hour   => 16,
					 minute => 12,
					 second => 47
					);
unless ($dt) { print "not " }
print "ok 2\n";


$baby = DateTime::Format::Baby->new('en');
unless ($baby) { print "not " }
print "ok 3\n";

my $babytalk = $baby->format_datetime($dt);
unless ($babytalk eq 'The big hand is on the two and the little hand is on the four') {
	print "not ok 4: got '$babytalk'\n"
} else {
	print "ok 4\n"
}

my $babylang = $baby->language();
unless ($babylang eq 'en') {
	print "not ok 5: got '$babylang'\n"
} else {
	print "ok 5\n"
}

my $babylangfr = $baby->language('fr');
unless ($babylangfr eq 'fr') {
	print "not ok 6: got '$babylangfr'\n"
} else {
	print "ok 6\n"
}

my $babyfr = $baby->format_datetime($dt);
unless ($babyfr eq 'La grande aiguille est sur le deux et la petite aiguille est sur le quatre') {
	print "not ok 7: got '$babyfr'\n"
} else {
	print "ok 7\n"
}

my $babylangen = $baby->language('en');
unless ($babylangen eq 'en') {
	print "not ok 8: got '$babylangen'\n"
} else {
	print "ok 8\n"
}

my $dt2 = $baby->parse_datetime('Big hand is near the seven while the little hand is near the six.');
unless (($dt2->hour == 5) && ($dt2->minute == 35)) {
	print "not ok 9: got '$dt2'\n"
} else {
	print "ok 9\n"
}

$baby->language('du');
my $dt3 = $baby->parse_datetime('De grote wijzer is op de twaalf en de kleine wijzer is op de acht');
unless (($dt3->hour == 8) && ($dt3->minute == 00)) {
	print "not ok 10: got '$dt3'\n"
} else {
	print "ok 10\n"
}



