## This repository has been archived!
*This IPFS-related repository has been archived, and all issues are therefore frozen.* If you want to ask a question or open/continue a discussion related to this repo, please visit the [official IPFS forums](https://discuss.ipfs.io).

We archive repos for one or more of the following reasons:
- Code or content is unmaintained, and therefore might be broken
- Content is outdated, and therefore may mislead readers
- Code or content evolved into something else and/or has lived on in a different place
- The repository or project is not active in general

Please note that in order to keep the primary IPFS GitHub org tidy, most archived repos are moved into the [ipfs-inactive](https://github.com/ipfs-inactive) org.

If you feel this repo should **not** be archived (or portions of it should be moved to a non-archived repo), please [reach out](https://ipfs.io/help) and let us know. Archiving can always be reversed if needed.

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
