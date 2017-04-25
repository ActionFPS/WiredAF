#!/bin/bash

ssh af_server@woop.ac cat "/home/af_server/game/serverlog_20170423_11.13.50_local#30000.txt"|/home/af/ac_log_timing.pl
tail -n +0 -f /home/af/journal.2017-01-13.5000.log | awk -v server_string="62-210-131-155.rev.poneytelecom.eu sd-55104 ActionFPS[local#30000]" -f /home/af/transform-journal-to-ladder.awk
