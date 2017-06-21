#!/bin/bash
xvfb-run -s "-screen 0 1280x720x24" jupyter notebook "$@" --NotebookApp.token=""

