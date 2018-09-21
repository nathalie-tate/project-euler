#!/usr/bin/perl

use strict;
use warnings;

use integer;

my $start;

BEGIN
{
  $start= time;
}

END
{
  print "Time: " . (time - $start) . "\n";
}

my $sum = 0;

for(1..2000000)
{
  if(isPrime($_))
  {
    $sum += $_;
  }
}
print "Answer: $sum\n";

sub isPrime
{
  my $n = shift;

  my $root = sqrt $n;
  $root++;

  return 0 if $n < 2;
  return 1 if $n == 2;
  return 0 if $n % 2 == 0;

  my $i = 3;

  while($i < $root)
  {
    if($n % $i == 0)
    {
      return 0;
    }
    $i+=2;
  }
  return 1;
}
