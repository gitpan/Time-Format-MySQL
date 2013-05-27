package Time::Format::MySQL;
use 5.008005;
use strict;
use warnings;
use Carp qw(croak);
use Time::Piece ();
use parent qw(Exporter);
our @EXPORT = qw(from_unixtime unix_timestamp);

our $VERSION = "0.02";

sub from_unixtime {
    Time::Piece::localtime(shift)->strftime('%Y-%m-%d %H:%M:%S');
}

sub unix_timestamp {
    Time::Piece::localtime->strptime(shift, '%Y-%m-%d %H:%M:%S')->epoch;
}

1;
__END__

=encoding utf-8

=head1 NAME

Time::Format::MySQL - provides from_unixtime() and unix_timestamp()

=head1 SYNOPSIS

    use Time::Format::MySQL;

    print from_unixtime(time); #=> 2013-01-11 12:03:28
    print unix_timestamp('2013-01-11 12:03:28'); #=> 1357873408

=head1 DESCRIPTION

Time::Format::MySQL provides mysql-like functions, from_unixtime() and unix_timestamp().

=head1 FUNCTIONS

=over

=item from_unixtime

unix timestamp -> date time

=item unix_timestamp

date time -> unix timestamp

=back

=head1 SEE ALSO

=over

=item L<DateTime::Format::MySQL>

=item L<Time::Piece::MySQL>

=back

=head1 LICENSE

Copyright (C) Hiroki Honda.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

Hiroki Honda E<lt>cside.story@gmail.comE<gt>

=cut

