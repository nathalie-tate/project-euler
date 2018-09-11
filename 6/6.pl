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

print squareOfSum() - sumOfSquares() . "\n";

sub sumOfSquares
{
  my $sum = 0;
  $sum += $_ ** 2 for (1..100);

  return $sum;
}

sub squareOfSum
{
  my $sum = 0;

  $sum += $_ for (1..100);

  return $sum ** 2;
}
