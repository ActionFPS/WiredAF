#!/bin/bash

cat /home/af/journal.2017-01-13.5000.log | awk -v server_string="45.34.167.87 califa AssaultCube[califapublic]" -f /home/af/transform-journal-to-ladder.awk
tail -n +0 -f /home/af/journal.2017-01-13.5000.log | awk -v server_string="califa.actionfps.com califa AssaultCube[califapublic]" -f /home/af/transform-journal-to-ladder.awk
