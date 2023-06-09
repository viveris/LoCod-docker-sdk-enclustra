# Locod Sdk Enclustra : Docker with an SDK for the Enclustra Mercury+ XU7 board

## Description

This repository contains a Dockerfile to make a Docker image with the followings components :

- **Enclustra Mercury+ XU7 SDK** : the SDK (Software Development Kit) provides a sysroot with the corresponding Linux packages activated in the Petalinux project. It can then be used to build applications for the board's target architecture.

In the context of the Locod project, this SDK is used to generate the executable from the user C code for the Enclustra target board.

<br>

## Dependencies

To work, this dockerfile must be built in a directory with the following files:
- `sdk-enclustra.sh` : the SDK for the Enclustra board build with **Petalinux 2022.1**

Here are the dependencies installed within the Dockerfile to make these tools working :

`python make`

<br>

## Run command and usage

The Petalinux SDK is installed in **/opt/petalinux-sdk/**. To use it, the environment must be sourced using :

```console
source /opt/petalinux-sdk/environment-setup-cortexa72-cortexa53-xilinx-linux
```

Once built, the Docker image can be used to create a container with the following command:

```console
docker run -it --rm -v ... DOCKER_IMAGE_NAME bash -c 'source /opt/petalinux-sdk/environment-setup-cortexa72-cortexa53-xilinx-linux;bash'
```