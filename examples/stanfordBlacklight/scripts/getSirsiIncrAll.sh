#! /bin/bash
# getSirsiIncrAll.sh
# Pull over all the incremental update files from Sirsi
#  Naomi Dushay 2010-03-13

REMOTE_DATA_DIR=/s/Dataload/SearchworkIncrement

LOCAL_DATA_DIR=/home/blacklight/data/unicorn
LATEST_DATA_DIR=$LOCAL_DATA_DIR/latest

#  scp remote files to "latest" preserving timestamps
sftp -o 'IdentityFile=~/.ssh/id_rsa' apache@jenson:$REMOTE_DATA_DIR/* $LATEST_DATA_DIR/

exit 0
