#!/bin/bash

# arguments
## user-defined
CMD=$1
OPTIONS=$2

## default
WORKDIR_HOST=`pwd`/aws
WORKDIR_GUEST=/tmp/jenkins-master
KEY_PAIR_PRIVATE_KEY=$HOME/.ssh/id_rsa

# runs terraform
docker run \
    --rm \
    -i \
    -t \
    --env AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
    --env AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
    -v $WORKDIR_HOST:$WORKDIR_GUEST \
    -v $KEY_PAIR_PRIVATE_KEY:$WORKDIR_GUEST/.ssh/id_rsa \
    --workdir=$WORKDIR_GUEST \
    hashicorp/terraform:0.9.8 \
        $CMD \
        $OPTIONS
