use warnings;
use strict;

package RT::Extension::RecentlyViewedTickets;
our $VERSION = "0.01";

use RT::Config;

$RT::Config::META{RecentlyViewedTicketsLimit} = {
    Section         => 'General',
    Overridable     => 1,
    SortOrder       => 100,
    Widget          => '/Widgets/Form/Integer',
    WidgetArguments => {
        Description => 'Recently Viewed Tickets Limit',    #loc
    }
};


1;
__END__

=head1 NAME

RT::Extension::RecentlyViewedTickets - Recently Viewed Tickets

=head1 VERSION

Version 0.01

=head1 INSTALLATION

To install this module, run the following commands:

    perl Makefile.PL
    make
    make install

add RT::Extension::RecentlyViewedTickets to @Plugins in RT's etc/RT_SiteConfig.pm:

    Set( @Plugins, qw(... RT::Extension::RecentlyViewedTickets) );

    Set( $HomepageComponents, [qw(... RecentlyViewedTickets)] );
    Set( $RecentlyViewedTicketsLimit, 10 );
    Set( $RecentlyViewedTicketsFormat, qq{
      '<B><A HREF="__WebPath__/Ticket/Display.html?id=__id__">__id__</a></B>/TITLE:#',
      '<B><A HREF="__WebPath__/Ticket/Display.html?id=__id__">__Subject__</a></B>/TITLE:Subject',
      Status, QueueName, } );

=head1 AUTHOR

sunnavy, <sunnavy at bestpractical.com>


=head1 LICENSE AND COPYRIGHT

Copyright 2012 Best Practical Solutions, LLC.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.


