#!/bin/sh -l

set -e

# Set ENV
if [[ $GITHUB_REF = "refs/heads/master" ]]
then
    export ENV="prod"
else
    export ENV=`echo ${GITHUB_REF#refs/heads/} | tr '[:upper:]' '[:lower:]' | tr / - | tr _ -`
fi

# Set Action output vars
echo ::set-output name=env::$ENV
