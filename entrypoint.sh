#!/bin/bash -e

/etc/init.d/xvfb start && sleep 2

echo "Executing command $@ as user 'tester'"
sudo -u tester "$@"
