use Module::Build;

Module::Build -> new
(
 module_name    => 'Set::FA',
 license        => 'artistic_2',
 dist_abstract  => 'A Set of Discrete Finite Automata',
 dist_author    => 'Ron Savage <ron@savage.net.au>',
 build_requires =>
 {
 	 Test::Simple => 0.98,
 	 Test::Pod    => 1.45,
 },
 configure_requires =>
 {
 	 Module::Build => 0.3800,
 },
 requires =>
 {
	 attributes      => 0.12,
	 Capture::Tiny   => 0.10, # For testing.
	 Hash::FieldHash => 0.10,
	 parent          => 0.224,
	 Set::Object     => 1.28,
 },
) -> create_build_script();
