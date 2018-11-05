#!/bin/bash

# Execute:
# source ipython_setup.sh
# before launching ipython or jupyter notebooks to automatically create a temporary ipython profile in
# /tmp/arc-ipython-profiles. This avoids distrupting any existing profiles and reduces the chance of 
# conflict by using a "known good" profile.
# Also adds the "tools" subdir to the PYTHONPATH


PROFILE_LOC=/tmp/arc-ipython-profiles
export IPYTHONDIR=$PROFILE_LOC

mkdir -p $PROFILE_LOC
bash -c 'ipython profile create > /dev/null'
cp tools/ipython_config.py $PROFILE_LOC/profile_default/ipython_config.py 
export PYTHONPATH=$PYTHONPATH:$(readlink -f tools)




