FROM stackbrew/ubuntu:12.04
MAINTAINER John Regan <john@jrjrtech.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y python-software-properties python g++ make
RUN add-apt-repository -y ppa:chris-lea/node.js
RUN apt-get update
RUN apt-get install -y nodejs
RUN npm -g install socket.io
RUN npm -g install forever
RUN npm -g install coffee-script
RUN npm -g install express
RUN npm -g install underscore

# Remove things for building modules
RUN apt-get remove -y manpages manpages-dev g++ gcc cpp make python-software-properties unattended-upgrades ucf g++-4.6 gcc-4.6 cpp-4.6

RUN     useradd -m node_user

WORKDIR /home/node_user

USER    node_user
ENV     HOME /home/node_user
ENV     NODE_PATH /usr/lib/node_modules

ENTRYPOINT ["forever"]
