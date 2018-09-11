#!/usr/bin/perl

use strict;
use warnings;

use List::Util qw/max/;

my $start;
my %primes;

BEGIN
{
  $start= time;
  %primes =
  (
    1 => 2,
    2 => 3,
    3 => 5,
    4 => 7,
    5 => 11,
    6 => 13
  );
}

END
{
  print "Time: " . (time - $start) . "\n";
}


my $numPrimes = 6;

my $prime = 13;
my $currentNum = 15;

while ($numPrimes < 10001)
{
  my $flag = 1;
  for(2..sqrt $currentNum)
  {
    if($currentNum % $_ == 0)
    {
      $flag = 0;
    }
  }
  if($flag)
  {
    $numPrimes++;
    $prime = $currentNum;
  }
  $currentNum++;
}

print "10001st prime: $prime \n";
