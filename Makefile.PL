# $Id$
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'		=> 'Tie::Cycle',
    'VERSION_FROM'	=> 'Cycle.pm',
 
    'PREREQ_PM'		=> {
		'Test::More'       => '0',
    },
    
    'MAN3PODS'      => {
    	'Cycle.pm'  => '$(INST_MAN3DIR)/Tie::Cycle.3',
    	},
    	
    'clean' => { FILES => 'Tie-Cycle-*' },
);
