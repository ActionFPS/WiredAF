#!/bin/bash

ssh af_server@woop.ac tail -n +0 -f "/home/af_server/game/serverlog_20170423_11.13.50_local#30000.txt"|/home/af/ac_log_timing.pl
