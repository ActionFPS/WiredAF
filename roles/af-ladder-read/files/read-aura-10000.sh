#!/bin/bash
ssh assaultcube@woop.ac /home/assaultcube/cat-logs-10000.sh  | stdbuf --output=L /home/af/ac_log_timing.pl
ssh assaultcube@woop.ac /home/assaultcube/tail-last-log-10000.sh  | stdbuf --output=L /home/af/ac_log_timing.pl
