require 5.008;
use strict;
use warnings;

my %WriteMakefile = (
	'NAME'          => 'Tie::Cycle',
	'ABSTRACT'      => 'Cycle through a list of values via a scalar',
	'VERSION_FROM'  => 'lib/Tie/Cycle.pm',
	'LICENSE'       => 'perl',
	'AUTHOR'        => 'brian d foy <bdfoy@cpan.org>',

	'CONFIGURE_REQUIRES' => {
		'ExtUtils::MakeMaker' => '6.64',
		},

	'BUILD_REQUIRES' => {
		},

	'TEST_REQUIRES' => {
		'Test::More' => '0.95',
		},

	'PREREQ_PM' => {
		'Carp' => '0',
		},

	'META_MERGE' => {
		'meta-spec' => { version => 2 },
		resources => {
			repository => {
				type => 'git',
				url  => "$github.git",
				web  => $github,
				},
			bugtraker => {
				web    => "$github/issues",
				},
			homepage => $github,
			},
		},

	'clean' => { FILES => 'Tie-Cycle-*' },
	);

sub arguments { \%WriteMakefile }

do_it() unless caller;
sub do_it {
	my $MM ='ExtUtils::MakeMaker';
	my $MM_version =
		eval{ "$MM " . $WriteMakefile{'CONFIGURE_REQUIRES'}{'ExtUtils::MakeMaker'} }
			//
		"$MM 6.64";
	eval "use $MM_version";
	eval "use Test::Manifest 1.21";
	WriteMakefile( %WriteMakefile );
	}


no warnings;
__PACKAGE__;
