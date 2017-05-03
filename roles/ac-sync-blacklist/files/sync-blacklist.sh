#!/bin/bash
BLACKLIST_TARGET="$1"
cp serverblacklist.cfg nicknameblacklist.cfg ${BLACKLIST_TARGET}
cp maprot.cfg ${BLACKLIST_TARGET}
cp motd_en.cfg ${BLACKLIST_TARGET}