#!/bin/bash
read_old() {
ssh califac@califa.actionfps.com '
set +m
shopt -s lastpipe
ls -rt $(find /home/califac/assaultcube/ -iname "serverlog*public.txt") | \
while read -r file; do tail_file=$file; cat $file; done
tail -f $tail_file
' | stdbuf --output=L /home/af/ac_log_timing.pl
}
cat /home/af/califapublic.txt | stdbuf --output=L /home/af/ac_log_timing.pl
