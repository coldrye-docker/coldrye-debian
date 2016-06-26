# coldrye-debian

[![coldrye/debian](http://dockeri.co/image/coldrye/debian)](https://hub.docker.com/r/coldrye/debian/)


## Description

This packages Debian in various releases based on library/debian.

Besides of a dist-upgrade, additional packages will be installed during the build process, in order to make
work inside the container more comfortable.


## Image Releases

Images are released for the following debian releases.

- jessie (from debian:jessie-backports)
- testing (stretch)

See https://hub.docker.com/r/coldrye/debian/tags/ for a complete list.


## Additional Packages

### Editors

- less
- vim

### Networking

- curl
- netcat
- net-tools

### Package Management

- apt-utils

### Encryption

- gnupg


## TODO

- key bindings in vim do not always work, most notably PageDwn/PageUp, Home, End and other such keys

