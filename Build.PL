use strict;

use Module::Build;

my $builder =
    Module::Build->new
        ( module_name         => 'XML::Generator::RSS10',
          license             => 'perl',
          dist_author         => 'David Rolsky <autarch@urth.org>',
          dist_version_from   => 'lib/XML/Generator/RSS10.pm',
          requires            => { 'Params::Validate'        => 0,
                                   'Test::More'              => 0,
                                   # prevents bugs with cdata sections in content module
                                   'XML::Filter::BufferText' => 1.01,
                                   'XML::SAX::Base'          => 0,
                                 },
          build_requires      => { 'XML::SAX::Writer' => 0 },
          add_to_cleanup      => [ 'XML-Generator-RSS10-*' ],
          sign                => 1,
          create_makefile_pl  => 'passthrough',
        );

$builder->create_build_script();
