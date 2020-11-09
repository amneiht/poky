#!/bin/bash
USER_NAME=$1
GROUP_ID=$2
USER_ID=$3
if  [ $USER_NAME ] && [ $GROUP_ID ] &&[ $USER_ID ] ;
then 
groupadd -g $GROUP_ID $USER_NAME && \
useradd -g $GROUP_ID -m -s /bin/bash -u $USER_ID $USER_NAME 
/bin/bash
else
echo "you should add USER_NAME and GROUP_ID and USER_ID to run this container"
fi
