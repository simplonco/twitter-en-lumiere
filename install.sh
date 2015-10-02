#!/bin/sh

apt-get -y install vim
apt-get -y install gedit
apt-get -y install libssl-dev
apt-get -y install ruby2.1
apt-get -y install ruby2.1-dev

if ! gem spec bundler > /dev/null 2>&1; then
  gem install bundler
fi

mkdir /root/Desktop
cd /root/Desktop
git clone https://github.com/simplonco/twitter-en-lumiere.git led
cd led

bundle install 
sed -i '/exit 0/d' /etc/rc.local 
sed -i '/su -l root -c startx/d' /etc/rc.local 
             
echo "su -l root -c startx" >> /etc/rc.local
echo "exit 0" >> /etc/rc.local

sed -i 's/gb/fr/g' /etc/default/keyboard
    
sed -i '/cd \/root\/Desktop\/led/d' /etc/rc.local
echo "cd /root/Desktop/led" >> ~/.bashrc
    
sudo sed -i 's/EventMachine.kqueue/#EventMachine.kqueue/g' /var/lib/gems/2.1.0/gems/tweetstream-2.6.1/lib/tweetstream/client.rb

