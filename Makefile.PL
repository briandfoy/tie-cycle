# $Id$
use ExtUtils::MakeMaker;

WriteMakefile(
    'NAME'		=> 'Tie::Cycle',
    'VERSION_FROM'	=> 'Cycle.pm',
 
    'PREREQ_PM'		=> {
		'File::Find::Rule' => '0',
		'Test::Manifest'   => '0.91',
		'Test::More'       => '0',
		'Test::Pod'        => '0.90',
    	},
    
    'MAN3PODS'      => {
    	'Cycle.pm'  => '$(INST_MAN3DIR)/Tie::Cycle.3',
    	},
    	
    'clean' => { FILES => 'Tie-Cycle-*' },
);
