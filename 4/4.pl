#!/usr/bin/perl

use strict;
use warnings;

my $mp = 0;
for my $i(100..999)
{
  for my $j(100..999)
  {
    if(isPalindrome($i * $j))
    {
      $mp = ($i * $j) > $mp ? ($i * $j) : $mp;
    }
  }
}

print $mp;

sub isPalindrome
{
  my $x = shift;
  my $y = join "", reverse split //, $x;

  return $x eq $y;
}
