package XML::Generator::RSS10::admin;

use strict;

use base 'XML::Generator::RSS10::Module';


sub NamespaceURI { 'http://webns.net/mvcb/' }

sub contents
{
    my $class = shift;
    my $rss = shift;
    my $p = shift;

    foreach my $elt ( sort keys %$p )
    {
        $rss->_element( $class->Prefix, $elt,
                        [ 'rdf', 'resource', $p->{$elt} ],
                      );
        $rss->_newline_if_pretty;
    }
}


1;

__END__

=head1 NAME

XML::Generator::RSS10::admin - Support for the Administrative (admin) RSS 1.0 module

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
                   admin => { errorReportsTo => 'pantsmaster@example.com',
                              generatorAgent => 'http://generator.example.com/',
                            },
                 );

=head1 DESCRIPTION

This module provides support for the Administrative (admin) RSS 1.0
module.

=head1 PARAMETERS

This module handles only two parameters, "errorReportsTo" and
"generatorAgent", both of which are channel subelements.

=cut
