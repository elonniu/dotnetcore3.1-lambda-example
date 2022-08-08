#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

printf '\n\n ==== BUILD APPLICATION ===== \n'
$DIR/build.sh

printf "\n\n ==== DEPLOY APPLICATION ===== \n"
$DIR/deploy.sh

printf "\n\n ==== RUN APPLICATION ===== \n"
$DIR/run.sh
