# $Id$
use ExtUtils::MakeMaker;

require 5.008;

eval "use Test::Manifest 1.21";

WriteMakefile(
	'NAME'          => 'Tie::Cycle',
	'ABSTRACT'      => 'Cycle through a list of values via a scalar',
	'VERSION_FROM'  => 'lib/Cycle.pm',
	'LICENSE'       => 'perl',
	'AUTHOR'        => 'brian d foy <bdfoy@cpan.org>',

	'PM'            => {
		'lib/Cycle.pm'=> '$(INST_LIBDIR)/Cycle.pm',
		},

	'PREREQ_PM'		=> {
		'Test::More'       => '0',
	},

	'MAN3PODS'      => {
		'lib/Cycle.pm'  => '$(INST_MAN3DIR)/Tie::Cycle.3',
		},

	'clean' => { FILES => 'Tie-Cycle-*' },

	(eval { ExtUtils::MakeMaker->VERSION(6.46) }
		? (META_MERGE => {
			resources => {
				Repository => 'http://github.com/briandfoy/tie-cycle/tree/master'
				}
			})
		: ()
	),

);
