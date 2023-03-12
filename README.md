# Docker server setup
This repository contains setup scripts to quickly setup a ubuntu server for running docker containers.

## Usage
Before installing the containers docker should be installed using the following command
```bash
source docker_setup.bash
```

After this the containers can be installed by moving to the folder and running the following command
```bash
cd <service name>
source setup.bash
```

## Contained services
- Portainer: Container manager with web interface
- Overleaf: Latex editor and compilation server
- Gitlab: Code repository server

## Resources
- [Install docker desktop](https://docs.docker.com/desktop/install/ubuntu/)