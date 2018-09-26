#!/usr/bin/perl

use strict;
use warnings;

my $start;

BEGIN
{
  $start= time;
}

END
{
  print "Time: " . (time - $start) . "\n";
}

open FH,"<11.txt" or die;

my @rows;
while(<FH>)
{
  chomp;
  $_ =~ s/0(\d)/$1/g;
  my @tmp = split / /;
  push @rows, \@tmp;
}

my $max = 0;

# ugh, we're gonna have to use c style for loops, which basically gets rid of 
# the most fun parts of perl
for my $i(0..@rows-1)
{
  for my $j (0..@{$rows[$i]}-1)
  {
    if($i < @rows - 4)
    {
      my $product = $rows[$i]->[$j] * $rows[$i+1]->[$j] * $rows[$i+2]->[$j] * $rows[$i+3]->[$j];
      $max = $product > $max ? $product : $max;
    }
    if($j < @{$rows[$i]} - 4)
    {
      my $product = $rows[$i]->[$j] * $rows[$i]->[$j+1] * $rows[$i]->[$j+2] * $rows[$i]->[$j+3];
      $max = $product > $max ? $product : $max;
    }
    if($i < @rows - 4 && $j > 4)
    {
      my $product = $rows[$i]->[$j] * $rows[$i+1]->[$j-1] * $rows[$i+2]->[$j-2] * $rows[$i+3]->[$j-3];
      $max = $product > $max ? $product : $max;
    }
    if($i < @rows - 4 && $j < @{$rows[$i]} - 4)
    {
      my $product = $rows[$i]->[$j] * $rows[$i+1]->[$j+1] * $rows[$i+2]->[$j+2] * $rows[$i+3]->[$j+3];
      $max = $product > $max ? $product : $max;
    }
  }
}

print "Answer: $max\n";
