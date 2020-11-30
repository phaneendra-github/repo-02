#!/bin/bash

pwd=`pwd`
source $pwd/env.sh


/usr/local/bin/aws ec2 run-instances \
    --image-id $image \
    --instance-type $insTyp \
    --subnet-id $subnet \
    --security-group-ids $SGs \
    --key-name $KeyPair \
    --count 1 \
    --region $region 
