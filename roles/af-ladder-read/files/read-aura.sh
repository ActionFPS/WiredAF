#!/bin/bash

cat '/home/af/serverlog_20160501_15.14.10_local#28763.txt' | /home/af/ac_log_timing.pl
ssh assaultcube@woop.ac bash -c '/home/assaultcube/cat-logs.sh | gzip' | gunzip | /home/af/ac_log_timing.pl
ssh assaultcube@woop.ac /home/assaultcube/tail-last-log.sh | stdbuf --output=L /home/af/ac_log_timing.pl
