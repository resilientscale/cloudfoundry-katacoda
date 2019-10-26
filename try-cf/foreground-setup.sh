#!/bin/bash

echo "Setting up"; while [ ! -f /opt/.backgroundfinished ] ; do sleep 2; done; echo "Setup Complete"