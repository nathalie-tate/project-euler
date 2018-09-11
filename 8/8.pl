#!/usr/bin/perl

use strict;
use warnings;

use List::Util qw/product/;

my $start;

BEGIN
{
  $start= time;
}

END
{
  print "Time: " . (time - $start) . "\n";
}

open FH,"<8.txt" or die;
my $maxProduct = 0;

$/ = undef;
my $row = <FH>;
$row =~ s/\s//g;
my @row = split //, $row;

my $beg= 0;
my $end = 12;

while($end < 1000)
{
  my $currentProduct = product(@row[$beg..$end]);
  $maxProduct = $currentProduct if $currentProduct > $maxProduct;
  $beg++;
  $end++;
}

print "Answer: $maxProduct\n";
