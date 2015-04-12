package ONVIF::Media::Types::Split;
use strict;
use warnings;


__PACKAGE__->_set_element_form_qualified(1);

sub get_xmlns { 'http://www.onvif.org/ver10/schema' };

our $XML_ATTRIBUTE_CLASS;
undef $XML_ATTRIBUTE_CLASS;

sub __get_attr_class {
    return $XML_ATTRIBUTE_CLASS;
}

use Class::Std::Fast::Storable constructor => 'none';
use base qw(SOAP::WSDL::XSD::Typelib::ComplexType);

Class::Std::initialize();

{ # BLOCK to scope variables

my %from_of :ATTR(:get<from>);
my %to_of :ATTR(:get<to>);

__PACKAGE__->_factory(
    [ qw(        from
        to

    ) ],
    {
        'from' => \%from_of,
        'to' => \%to_of,
    },
    {
        'from' => 'ONVIF::Media::Types::ObjectId',
        'to' => 'ONVIF::Media::Types::ObjectId',
    },
    {

        'from' => 'from',
        'to' => 'to',
    }
);

} # end BLOCK








1;


=pod

=head1 NAME

ONVIF::Media::Types::Split

=head1 DESCRIPTION

Perl data type class for the XML Schema defined complexType
Split from the namespace http://www.onvif.org/ver10/schema.






=head2 PROPERTIES

The following properties may be accessed using get_PROPERTY / set_PROPERTY
methods:

=over

=item * from


=item * to




=back


=head1 METHODS

=head2 new

Constructor. The following data structure may be passed to new():

 { # ONVIF::Media::Types::Split
   from => ,
   to => ,
 },




=head1 AUTHOR

Generated by SOAP::WSDL

=cut
