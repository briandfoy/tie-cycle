use ExtUtils::MakeMaker 6.64;

require 5.008;

eval "use Test::Manifest 1.21";

WriteMakefile(
	'NAME'          => 'Tie::Cycle',
	'ABSTRACT'      => 'Cycle through a list of values via a scalar',
	'VERSION_FROM'  => 'lib/Tie/Cycle.pm',
	'LICENSE'       => 'perl',
	'AUTHOR'        => 'brian d foy <bdfoy@cpan.org>',

	'CONFIGURE_REQUIRES'  => {
		'ExtUtils::MakeMaker' => '6.64',	
		},

	'PREREQ_PM' => {
		'Carp' => '0',
		},

	'TEST_REQUIRES' => {
		'Test::More' => '0.95',	
		},

	'clean' => { FILES => 'Tie-Cycle-*' },

	'META_MERGE' => {
		'meta-spec' => { version => 2 },
		resources => {
			repository => {
				type => 'git',
				url  => 'git@github.com:briandfoy/tie-cycle.git',
				web  => 'https://github.com/briandfoy/tie-cycle',
				},
			},
		},

	);
