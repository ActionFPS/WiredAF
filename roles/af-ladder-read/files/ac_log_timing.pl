#!/usr/bin/perl
while ($line = <>) {
  if ( $line =~ /Status at (\d\d)-(\d\d)-(\d\d\d\d) (\d\d):(\d\d):(\d\d):/ ) {
    $last_date = "$3-$2-$1";
    $last_time = "$4:$5:$6";
  }
  if ( $last_date && $line =~ /^[A-Z][a-z][a-z] \d\d (.*)/ ) {
    print $last_date ."T". $1."\n";
  } elsif ( $last_date && $last_date =~ /^(2016|2017-01)/ ) {
    print $last_date . "T" . $last_time . " ". $line;
  }
}
