#!/bin/bash

curl -L "https://packages.cloudfoundry.org/stable?release=linux64-binary&source=github" | tar -zx

mv cf /usr/local/bin

 

# sudo curl -o /usr/share/bash-completion/completions/cf https://raw.githubusercontent.com/cloudfoundry/cli/master/ci/installers/completion/cf

# curl https://http-dump.cfapps.io