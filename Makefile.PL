use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME         => 'DateTime::Format::Baby',
    VERSION_FROM => 'lib/DateTime/Format/Baby.pm', # finds $VERSION
    AUTHOR       => 'Rick Measham (rickm@cpan.org)',
    ABSTRACT     => 'Parse and format baby-style time',
    PREREQ_PM => {
                    'DateTime'         => 0.06,
                    'Carp'             => 0,
                    'Params::Validate' => 0,
   }
    'LICENSE'		=> 'perl',
    'MIN_PERL_VERSION' => '5.6.1',
);
