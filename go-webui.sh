#!/usr/bin/env bash

touch TEMP/syslog
# Redirect stdout ( > ) into a named pipe ( >() ) running "tee"

exec > >(tee -i TEMP/syslog)
exec 2>&1

python webui.py