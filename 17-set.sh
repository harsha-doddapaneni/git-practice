#!/bin/bash

set -e

failure(){
    echo "Failed at: $1:$2"
}

trap 'failure "${LIINENO}" "$BASH_COMMAND"' ERR
echo "helo success"
echoo "helo fail"
echo "helo after failure"