#!/usr/bin/perl

use strict;
use warnings;

my $sum = 0;
my %fibs = 
( 
  0 => 1,
  1 => 2,
  2 => 3,
  3 => 5,
  4 => 8,
  5 => 13,
  6 => 21
);


my $n = 0;
my $i = nthFib($n);

while($i <= 4000000)
{
  if($i % 2 == 0)
  {
    $sum += $i;
  }
  $i = nthFib(++$n);
}

print $sum;

sub nthFib
{
  my $n_ = shift;

  if($fibs{$n_})
  {
    return $fibs{$n_};
  }
  else
  {
    $fibs{$n_} = $fibs{$n_-1} + $fibs{$n_-2};
    return $fibs{$n_};
  }
}
