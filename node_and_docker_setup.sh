#!/bin/bash

################# NODE INSTALLATION #############################

echo Do you want to install node [y/n]?
read "node_input"
if [[ $node_input == "y" ]];
  then
     curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
     export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
     [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
     nvm ls-remote
     echo enter the version to be installed;
     read "version"
     nvm install $version
     node --version
     echo installed node version $version
 else
     echo node version $version not installed

fi

######################## DOCKER INSTALLATION ####################
echo Do you want to install docker [y/n]?

read "docker_input"

if [[ $docker_input == "y" ]];
  then
          sudo apt-get update
          sudo apt-get install \
               ca-certificates \
                          curl \
                         gnupg \
                   lsb-release
          curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
         sudo apt-get update
         sudo apt-get install docker-ce docker-ce-cli containerd.io -y
         docker --version
 else
     echo docker is not installed

fi
