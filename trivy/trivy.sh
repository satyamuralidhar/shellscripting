#!/bin/bash
trivy --version > /dev/null 2&>1
rm -rf trivy_0.18.3* > /dev/null 2&>1
install=`sudo rpm -ivh https://github.com/aquasecurity/trivy/releases/download/v0.18.3/trivy_0.18.3_Linux-64bit.rpm`
if [[ $? != 0 ]]
then 
    $install
fi

#docker pull postgres:latest
#trivy --severity HIGH,MEDIUM postgres > ceverity.log
#less ceverity.log