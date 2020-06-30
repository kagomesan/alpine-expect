#!/bin/sh

forti=test-forti
today=`date '+%F_%H%M'`

read -s -p "password: " pwd

get_forti() {
expect -c "
spawn ssh ro@$forti
expect \"password: \"
send -- \"$pwd\n\"
expect \"forti #\"
send -- \"get system interface physical\n\"
send -- \"exit\n\"
expect \"forti #\"
expect " 
}

get_forti > /log/forti_$today.txt
