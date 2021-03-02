#!/bin/bash

USER_ID=$(id -u)
GROUP_ID=$(id -g)


if [ ${GROUP_ID} -ne 0 ] ; then
    groupadd -g $GROUP_ID $USER_NAME
else
    echo 'Perform docker run with "-u $(id -u):$(id -g)" option'
    exit
fi

if [ ${USER_ID} -ne 0 ] ; then
    useradd -d /home/$USER_NAME -m -s /bin/bash -u $USER_ID -g $GROUP_ID $USER_NAME
else
    echo 'perform docker run with "-u $(id -u):$(id -g)" option'
    exit
fi

sudo chmod u-s /usr/sbin/useradd
sudo chmod u-s /usr/sbin/groupadd

export HOME=/home/${USER_NAME}
cd $HOME

exec $@


