#!/bin/bash

cd /tmp
aptitude -y install unzip openjdk-7-jre-headless
wget --quiet http://cznic.dl.sourceforge.net/project/jhove/jhove/JHOVE%201.11/jhove-1_11.zip
unzip -q jhove-1_11.zip -d /opt
rm jhove-1_11.zip -d
cd /opt/jhove
perl configure.pl /opt/jhove
rm /opt/jhove/jhove
cp /vagrant/provision/jhove /opt/jhove
chmod o+x /opt/jhove/jhove
echo "export PATH=\$PATH:/opt/jhove" >> /etc/profile
