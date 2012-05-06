#IP address of iPhone/iPad/iPod
deviceip="insert device ip here"

echo "iPhone/iPad/iPod remote SMS backup Utility"

#checks if folder to copy to files exists
if [ -d ~/SMS ]; then
	echo "Backup folder exists continuing"
else 
	echo "Backup folder does not exist, script will now create it"
	mkdir ~/SMS
fi 
#Connects to device and copies SMS.db
scp root@$deviceip:/var/mobile/Library/SMS/sms.db ~/SMS/sms_`date +%Y,%m,%d_%H,%M,%S`.db

#Opens backup directory
open ~/SMS

echo "Thanks For using" 
echo "Created by Matt McInnes"

