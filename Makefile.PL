use strict;
use warnings;

use ExtUtils::MakeMaker;

# ----------------

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

my(%params) =
(
	($] ge '5.005') ?
	(
		AUTHOR   => 'Ron Savage (ron@savage.net.au)',
		ABSTRACT => 'A Set of Discrete Finite Automata',
	) : (),
	clean =>
	{
		FILES => 'blib/* Makefile MANIFEST Set-FA-*'
	},
	dist =>
	{
		COMPRESS => 'gzip',
		SUFFIX   => 'gz'
	},
	DISTNAME  => 'Set-FA',
	NAME      => 'Set::FA',
	LICENSE   => 'artistic_2',
	PL_FILES  => {},
	PREREQ_PM =>
	{
		'Capture::Tiny'	=> 0.30,
		'Log::Handler'	=> 0.84,
		'Moo'			=> 2.000002,
		'parent'		=> 0.234,
		'Set::Object'	=> 1.35,
		'strict'		=> 0,
		'Test::More'	=> 1.001014,
		'Test::Pod'		=> 1.48,
		'Test::Stream'	=> 1.302026,
		'warnings'		=> 0,
	},
	VERSION_FROM => 'lib/Set/FA.pm',
);

if ( ($ExtUtils::MakeMaker::VERSION =~ /^\d\.\d\d$/) && ($ExtUtils::MakeMaker::VERSION > 6.30) )
{
	$params{LICENSE} = 'artistic_2';
}

if ($ExtUtils::MakeMaker::VERSION ge '6.46')
{
	$params{META_MERGE} =
	{
		'meta-spec' =>
		{
		'version' => 2,
		},
		resources   =>
		{
			'bugtracker' => 'https://rt.cpan.org/Public/Dist/Display.html?Name=Set-FA',
			'license' => 'http://opensource.org/licenses/Artistic-2.0',
			repository =>
			{
				'type' => 'git',
				'url' => 'https://github.com/ronsavage/Set-FA.git',
				'web' => 'https://github.com/ronsavage/Set-FA',
			},
		},
	};
}

WriteMakefile(%params);
