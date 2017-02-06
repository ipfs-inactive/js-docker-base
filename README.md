## js-docker-base
> Base-configuration for running JavaScript projects in CI

This directory contains bunch of script and utilities for running js-ipfs and friends
correctly in CI, mainly Jenkins.

### Versions

* `quay.io/ipfs/js-base:6.9.4`

### Listing

* `Dockerfile` build-steps for building docker image
* `entrypoint.sh` script to start xvfb and then run your command
* `Jenkinsfile` actual pipeline for testing
* `xvfb.sh` script for starting/stopping xvfb

### Notes

xvfb is being used to start a browser without having any displays. We need this
because we run browser tests in Chrome.
