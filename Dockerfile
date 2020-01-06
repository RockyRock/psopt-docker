# Docker container to set-up the pseudo-spectral optimization tool (psopt) using an ubutu 18.04 environment
# R. Guicherd - December 2019

FROM ubuntu:18.04
MAINTAINER Romain Guicherd
RUN apt update
RUN apt -y upgrade
RUN apt -y install apt-utils autoconf libtool build-essential software-properties-common byobu curl git git-lfs htop man unzip nano wget
RUN git clone https://github.com/PSOPT/psopt /root/psopt/
RUN mkdir /root/Downloads
RUN ln -s /root /home/root
RUN cd /root/psopt && sed 's/sudo //g' install-ubuntu-18.04.sh > nosudo-install-ubuntu-18.04.sh && sh ./nosudo-install-ubuntu-18.04.sh

#### End of Docker file ####