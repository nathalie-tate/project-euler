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

my $sum = 5;

for(my $i = 5; $i < 2000000; $i++)
{
  if(isPrime($i))
  {
    $sum += $i ;
    print "$sum \n";
  }
}

print "Sum of primes below 2 million: $sum\n";

sub isPrime
{
  my $n = shift;

  return 0 if $n < 2;
  return 0 unless $n % 2;

  for(my $i = 3; $i < $n; $i++)
  {
    return 0 unless $n % $i;
  }
  return 1;
}
