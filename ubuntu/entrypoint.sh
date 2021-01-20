#!/bin/bash

USER_ID=$(id -u)
GROUP_ID=$(id -g)

groupadd -g $GROUP_ID $USER_NAME
useradd -d /home/$USER_NAME -m -s /bin/bash -u $USER_ID -g $GROUP_ID $USER_NAME

sudo chmod u-s /usr/sbin/useradd
sudo chmod u-s /usr/sbin/groupadd

exec $@
