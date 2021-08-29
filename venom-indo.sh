#!/usr/bin/bash
apt install figlet 
apt install hiptext
CYAN="\033[1;36m"
PURPLE="\033[1;35m"
GREEN="\033[1;32m"
RED='\033[1;31m'
NC='\033[0m'

if [ -e "$HOME/../usr/bin/ruby" ]; then
	echo $GREEN"Ruby mendeteksi proses..."
	sleep 1
	if [ -e "/data/data/com.termux/files/usr/bin/lolcat" ]; then
		echo $GREEN"lolcat terdeteksi melanjutkan..."
		sleep 1
	else
		echo $RED"lolcat tidak terdeteksi, menginstal..."
		gem install lolcat
	fi
else
	echo $RED"Anda tidak menginstal Ruby, menginstal..."
	sleep 1
	apt install ruby
	if [ -e "/data/data/com.termux/files/usr/bin/lolcat" ]; then
		echo $GREEN"lolcat terdeteksi melanjutkan..."
		sleep 1
	else
		echo "lolcat tidak terdeteksi, menginstal..."
		gem install lolcat
	fi
fi

clear

figlet -c -f slant -t 'Venom bot-tec' | lolcat 

echo  "Bot oleh: Venom 100% pt-en-indo" | lolcat -a -d 50 

apt-get update
apt-get upgrade -y
apt-get install nodejs -y
apt-get install libwebp -y
apt-get install ffmpeg -y
apt-get install wget -y
apt-get install tesseract -y
wget -O ~/../usr/share/tessdata/ind.traineddata "https://github.com/tesseract-ocr/tessdata/blob/master/ind.traineddata?raw=true"

npm i

figlet -c -f slant -t 'Venom bot-tec' | lolcat 
echo "[*] Protinho semua dependensi dibuat ketik perintah | simpul racun-indo | untuk memulai bot"
echo "Script ini dibuat oleh 6285875158363 /559791435184 :venom,,,,mods keraguan call la"
node venombot-pt