use strict;
use warnings;

use ExtUtils::MakeMaker;

# ----------------

# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile
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
		'attributes' => 0.12,
		'Capture::Tiny' => 0.10,
		'Hash::FieldHash' => 0.10,
		'parent' => 0.224,
		'Set::Object' => 1.28,
		'strict' => 0,
		'Test::More' => 1.001014,
		'Test::Pod' => 1.48,
		'warnings' => 0,
	},
	VERSION_FROM => 'lib/Set/FA.pm',
);
