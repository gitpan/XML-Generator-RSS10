package XML::Generator::RSS10::dc;

use strict;

use base 'XML::Generator::RSS10::Module';


sub NamespaceURI { 'http://purl.org/dc/elements/1.1/' }



1;

__END__

=head1 NAME

XML::Generator::RSS10::dc - Support for the Dublin Core (dc) RSS 1.0 module

=head1 SYNOPSIS

    use XML::Generator::RSS10;

    my $rss = XML::Generator::RSS10->new( Handler => $sax_handler );

    $rss->item( title => 'Exciting News About my Pants!',
                link  => 'http://pants.example.com/my/news.html',
                description => 'My pants are full of ants!',
                dc    => { creator => 'The More or Less Mighty' },
              );

    $rss->channel( title => 'Pants',
                   link  => 'http://pants.example.com/',
                   description => 'A fascinating pants site',
                   dc    => { publisher => 'The Pants People',
                              rights    => 'Mine, all mine!',
                              date      => $date,
                            },
                 );

=head1 DESCRIPTION

This module provides support for the Dublin Core (dc) RSS 1.0 module.

=head1 PARAMETERS

This module handles all of the Dublin Core elements, such as
"creator", "publisher", "date", etc.

=cut
