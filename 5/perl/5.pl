#!/usr/bin/perl

use strict;
use warnings;

my $x = 2520;
my $start;
BEGIN
{
  $start = time;
}
END
{
  print "Time: " . (time - $start) . "\n";
}
while(1)
{
  my $t = 1;
  for (1..20)
  {
    if($x % $_)
    {
      $t = 0;
      last;
    }
  }
  if ($t)
  {
    print "Answer: $x\n";
    exit;
  }
  $x += 2;
}
