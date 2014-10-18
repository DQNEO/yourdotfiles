#!/usr/bin/perl

use strict;
use warnings;

print "var names = [\n";

while(<>) {
    chomp;
    print "'$_',\n";
}

print "'dummy'\n];\n";
