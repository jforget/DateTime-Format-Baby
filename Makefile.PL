use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'AUTHOR'       => 'Rick Measham <rickm@cpan.org>',
    'NAME'         => 'DateTime::Format::Baby',
    'VERSION_FROM' => 'Baby.pm', # finds $VERSION
    'ABSTRACT'     => 'Parse and format baby-style time',
    'PREREQ_PM'    => {'DateTime'=>0, # Can't run without DateTime :)
                       'Carp' =>0},   
);