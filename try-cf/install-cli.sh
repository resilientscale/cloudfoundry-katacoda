#!/bin/bash

echo "Installing the Cloud Foundry CLI"

curl -L "https://packages.cloudfoundry.org/stable?release=linux64-binary&source=github" | tar -zx

sudo mv cf /usr/local/bin

sudo chmod +x /usr/local/bin/cf

echo "Adding CLI autocompletions"

sudo curl -o /usr/share/bash-completion/completions/cf https://raw.githubusercontent.com/cloudfoundry/cli/master/ci/installers/completion/cf

echo "Setup complete"

echo "done" >> /opt/.backgroundfinished