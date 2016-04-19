#!/usr/bin/env bash

export TASK_NAME="compass-compile"

# check for the two required params
if [ -z "$WERCKER_COMPASS_COMPILE_CONFIG-FILE" ]
then
    fail 'Missing config-file option, please add it to the $TASK_NAME step in your wercker.yml'
fi


# check to see if gem install works first
if type gem install > /dev/null 2>&1; then
    sudo gem install compass
else
    fail 'gem install compass command failed, gem install is not a recognised command'
fi


# check to make sure sass is installed and then run the compile
if type compass > /dev/null 2>&1; then
    compass compile --config $WERCKER_COMPASS_COMPILE_CONFIG_FILE $WERCKER_COMPASS_COMPILE_FLAGS
else
    fail 'compass command failed, compass is not a recognised command'
fi