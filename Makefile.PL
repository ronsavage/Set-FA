use ExtUtils::MakeMaker;

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
 PL_FILES  => {},
 PREREQ_PM =>
 {
	 Hash::FieldHash => 0.10,
	 Test::More      => 0.94,
	 Test::Pod       => 1.44,
 },
 VERSION_FROM => 'lib/Set/FA.pm',
);
