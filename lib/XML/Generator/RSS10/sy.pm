package XML::Generator::RSS10::sy;

use strict;

use base 'XML::Generator::RSS10::Module';


sub NamespaceURI { 'http://purl.org/rss/1.0/modules/syndication/' }


1;

__END__

=head1 NAME

XML::Generator::RSS10::sy - Support for the Syndication (sy) RSS 1.0 module

=head1 SYNOPSIS

    use XML::Generator::RSS10;

    my $rss = XML::Generator::RSS10->new( Handler => $sax_handler );

    $rss->item( title => 'Exciting News About my Pants!',
                link  => 'http://pants.example.com/my/news.html',
                description => 'My pants are full of ants!',
              );

    $rss->channel( title => 'Pants',
                   link  => 'http://pants.example.com/',
                   description => 'A fascinating pants site',
                   sy    => { updatePeriod    => 'hourly',
                              updateFrequency => 2,
                            },
                 );

=head1 DESCRIPTION

This module provides support for the Syndication (sy) RSS 1.0 module.

=head1 PARAMETERS

This module handles all of the Syndication elements: "updatePeriod",
"updateFrequency", and "updateBase".

=cut
