#!/usr/bin/perl

use strict;
use warnings;

my $sum = 0;

for (3..999)
{
  if ($_ % 3 == 0 || $_ % 5 == 0)
  {
    $sum+=$_;
  }
}

print $sum;
