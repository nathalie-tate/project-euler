#!/usr/bin/perl

use strict;
use warnings;

my %primes = 
(
  1 => 0,
  2 => 1,
  3 => 1,
  4 => 0
);

print largestPrimeFactor(600851475143);

sub largestPrimeFactor
{
  my $x = shift;
  my $lpf = 2;

  for(3..sqrt $x)
  {
    if($x % $_ == 0)
    {
      if(isPrime($_))
      {
        $lpf = $_ > $lpf ? $_ : $lpf;
      }
    }
  }
  return $lpf;
}

sub isPrime
{
  my $y = shift;
  if(defined $primes{$y})
  {
    return $primes{$y};
  }

  else
  {
    my $sqrt = sqrt $y;

    if ($y % 2 == 0)
    {
      $primes{$y} = 0;
      return 0;
    }
    else
    {
      for (3..$sqrt)
      {
        if($y % $_ == 0)
        {
          $primes{$y} = 0;
          return 0;
        }
      }
      $primes{$y} = 1;
      return 1;
    }
  }
}
