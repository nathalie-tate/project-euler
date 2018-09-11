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

for (my $c=3; $c < 1000; $c++)
{
  for (my $b=2; $b < $c; $b++)
  {
    for (my $a=1; $a < $b; $a++)
    {
      if( ($a**2 + $b**2 == $c**2) && ($a + $b + $c == 1000))
      {
        my $product = $a*$b*$c;
        print "Answer: $product \n";
        exit;
      }
    }
  }
}
