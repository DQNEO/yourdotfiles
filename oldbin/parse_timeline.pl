#!/usr/bin/perl

# parse_timeline.pl
# cat timeline | perl parse_timeline.pl
use strict;
use warnings;
use XML::Simple;

my $x = XMLin('-'); # read from stdin

my @names = map { $_->{author}->{name} } values %{ $x->{entry} };

my @unique = sort {$a cmp $ b} array_unique(@names); 
print "$_\n" for @unique;


sub array_unique {
    my @list = @_;
    my %unique;
    for (@list) {
        $unique{$_} = 1;
    }
    return keys %unique;
}

