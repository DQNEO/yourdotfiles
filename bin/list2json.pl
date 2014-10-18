#!/usr/bin/env perl
# Usage
# list2json.pl < list.txt > js/names.json
use strict;
use warnings;

print "var names = [\n";

while(<>) {
    chomp;
    print "'$_',\n";
}

print "'dummy'\n];\n";
