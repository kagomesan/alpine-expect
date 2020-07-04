#!/bin/sh

usage () {
cat <<EOT
Usage: ./test.sh [ID] [PW]
EOT
exit 1
}

if [ $# -lt 1 ];then
  usage
fi

ID=$1
PW=$2

echo $1
echo $2
