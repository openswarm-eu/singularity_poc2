#!/bin/bash

# get the path to this script
THIS_PATH=`dirname "$0"`
REPO_PATH=`( cd "$THIS_PATH/../.." && pwd )`
THIS_PATH=`( cd "$THIS_PATH" && pwd )`

sudo apptainer build $REPO_PATH/images/openswarm_lio.sif $THIS_PATH/recipe.def
