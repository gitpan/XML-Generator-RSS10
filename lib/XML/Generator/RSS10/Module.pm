package XML::Generator::RSS10::Module;

use strict;


sub Prefix
{
    my $class = shift;

    $class =~ /^XML::Generator::RSS10::(\w+)$/;

    return $1;
}

sub contents
{
    my $class = shift;
    my $rss = shift;
    my $p = shift;

    foreach my $elt ( sort keys %$p )
    {
        $rss->_element_with_data( $class->Prefix, $elt, $p->{$elt} );
        $rss->_newline_if_pretty;
    }
}


1;

__END__

=head1 NAME

XML::Generator::RSS10::Module - Base class for module that implement RSS 1.0 modules

=head1 SYNOPSIS

    package XML::Generator::RSS10::foobar'

    use base 'XML::Generator::RSS10::Module';


    sub NamespaceURI { 'http://example.com/foobar' }

=head1 DESCRIPTION

This module is the base class for all modules that implement RSS 1.0
module support.

=cut
