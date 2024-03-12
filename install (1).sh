#!/bin/ash
# Installation script by ARYO.

DIR=/usr/bin



finish(){
	echo ""
    echo "INSTALL SUCCESSFULLY ;)"
#    echo "There are 2 important steps to finish this setup:"
#    echo ""
#    echo "1. Make sure this line is in the cron. To open the cron editor, run: crontab -e"
#    echo "   */2 * * * * $DIR/wwan-keep-alive.sh"
#    echo ""  
#    echo "2. The interface representing the LTE connection is set to 'wwan0'."
#    echo "   To change the interface, please edit the line INTERFACE='wwan0' in the 'restart-interface.sh'."
    echo ""
    echo "Please Configuration Conn Monitor (firmware reyre)"
}

download_files()
{
  	echo "Downloading files from repo..."
   	wget -O $DIR/mbit https://raw.githubusercontent.com/aryobrokolly/ngebit/main/usr/bin/mbit && chmod +x $DIR/mbit
 	wget -O $DIR/band.py https://raw.githubusercontent.com/aryobrokolly/ngebit/main/usr/bin/band.py && chmod +x $DIR/band.py
 	wget -O $DIR/ip.py https://raw.githubusercontent.com/aryobrokolly/ngebit/main/usr/bin/ip.py && chmod +x $DIR/ip.py
    	finish
}

echo ""
echo "Aryo Install Script code from repo."

while true; do
    read -p "This will download the files into $DIR and $DIR2. Do you want to continue (y/n)? " yn
    case $yn in
        [Yy]* ) download_files; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer 'y' or 'n'.";;
    esac
done