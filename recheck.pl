#!/usr/bin/perl 
#recheck - regular expression checker with submatches splitting

use strict;
use warnings;

my $c1 = "\033[31m";
my $c0 = "\033[0m";

while(1) {
  print "S: "; my $string  = <STDIN>; exit 0 if $string =~ /:q/;
  print "P: "; my $pattern = <STDIN>; exit 0 if $string =~ /:q/;
  chomp($string, $pattern);
  eval{qr/$pattern/}; die if $@;

  print ">$c1 $& $c0<\n" if $string =~ /$pattern/g;
  foreach my $i(1..$#-) {
    print ' [', $c1, substr($string, $-[$i], $+[$i] - $-[$i]), $c0, ']';
  }
  print "\n";
}

