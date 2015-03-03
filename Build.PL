use strict;
use warnings;

use Module::Build;

Module::Build -> new
(
	module_name    => 'Set::FA',
	license        => 'artistic_2',
	dist_abstract  => 'A Set of Discrete Finite Automata',
	dist_author    => 'Ron Savage <ron@savage.net.au>',
	build_requires =>
	{
		'Test::More' => 1.001014,
		'Test::Pod' => 1.48,
	},
	configure_requires =>
	{
		'Module::Build' => 0.4211,
	},
	requires =>
	{
		'attributes' => 0,
		'Capture::Tiny' => 0.10,
		'Hash::FieldHash' => 0.10,
		'parent' => 0,
		'Set::Object' => 1.28,
		'strict' => 0,
		'warnings' => 0,
	},
) -> create_build_script();
