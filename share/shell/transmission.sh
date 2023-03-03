#/bin/sh

case "$1" in
    start)
             echo "starting transmission";
             echo "";
             /usr/bin/transmission-daemon -g /root/transmission/share/conf
             ;;
    stop)
             echo "stoping transmission";
             echo "";
             ps ax | grep -i '/usr/bin/transmission-daemon' | grep -v grep | awk '{print $1}' | xargs kill -9
             ;;
   restart)
             transmission.sh stop;
             sleep 5;
             transmission.sh start;
             ;;
      *)
            echo -e "Usage : transmission.sh [Option] \n";
            echo -e "Options: start | stop | restart \n";
            exit 1
            ;;
esac