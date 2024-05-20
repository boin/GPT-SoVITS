#!/usr/bin/env bash

mkdir -p logs
touch -f logs/app.log

python webui.py 2>&1 | tee -i logs/app.log