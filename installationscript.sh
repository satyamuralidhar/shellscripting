#!/bin/bash

echo "========================== Git Installation ==========================="
GitPackage=git
function installGit() {
    yum install -y "${GitPackage}" > /dev/null  
    if [[ $? == 0 ]]
    then 
        echo "${GitPackage} is installed"
    else
        echo "git not installed"
    fi
}
installGit "${GitPackage}"

sleep 1

echo "====================== Installation Docker ============================"

dockerPackage=docker
function installDocker() {
    docker --version > /dev/null 2&>1
    if [[ $? == 0 ]]
    then   
        echo "docker is already installed"
    else 
        yum install -y "${dockerPackage}" > /dev/null
    fi
}

installDocker "${dockerPackage}"