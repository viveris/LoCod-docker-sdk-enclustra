FROM ubuntu:bionic
MAINTAINER Julien ARMENGAUD <julien.armengaud@viveris.fr>
LABEL description="Docker with Petalinux 2022.1 SDK for Enclustra board"


# Reset workdir
WORKDIR /


# Install requiered packages
RUN	apt update && \
	apt install --yes python make && \
	apt clean


# Copy SDK to docker
COPY sdk-enclustra.sh /


# Install SDK
RUN 	mkdir /opt/petalinux-sdk && \
	./sdk-enclustra.sh -d /opt/petalinux-sdk -y && \
	rm -rf sdk-enclustra.sh


# Change workdir
WORKDIR /root
