use strict;

use Test::More tests => 8;

use DateTime::Format::Baby;

my $dt = DateTime->new(
	year   => 1964,
	month  => 10,
	day    => 16,
	hour   => 16,
	minute => 12,
	second => 47
);

my $baby = DateTime::Format::Baby->new('en');
isa_ok($baby, 'DateTime::Format::Baby', 'Constructor returns a DateTime::Format::Baby object');

is( $baby->format_datetime($dt), 'The big hand is on the two and the little hand is on the four', 'Format English');
is( $baby->language(), 'en', 'language() returns English');

is( $baby->language('fr'), 'fr', 'language("fr") returns French');
is( $baby->format_datetime($dt), 'La grande aiguille est sur le deux et la petite aiguille est sur le quatre', 'Format French');

$baby->language('en'); # Back to English
my $dt2 = $baby->parse_datetime('Big hand is near the seven while the little hand is near the six.');
is ($dt2->hms, "05:35:00", 'Parse English');

is( $baby->language('du'), 'du', 'language("du") returns German');
my $dt3 = $baby->parse_datetime('De grote wijzer is op de twaalf en de kleine wijzer is op de acht');
is ($dt3->hms, "08:00:00", 'Parse German');




