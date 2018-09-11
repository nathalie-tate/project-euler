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
