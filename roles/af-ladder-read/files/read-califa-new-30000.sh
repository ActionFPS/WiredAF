#!/bin/bash

tail -n +0 -f /home/af/journal.2017-01-13.5000.log | awk -v server_string="califa.actionfps.com califa ActionFPS[local#30000]" -f /home/af/transform-journal-to-ladder.awk
