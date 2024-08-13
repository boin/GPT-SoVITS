#!/usr/bin/env bash

mkdir -p logs && python -u webui.py 2>&1 | stdbuf -oL -eL tee -i logs/app.log