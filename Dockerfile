FROM ubuntu
MAINTAINER Connor Macdougall

RUN apt-get update
RUN apt-get install -y software-properties-common
RUN add-apt-repository -y ppa:ethereum/ethereum
RUN apt-get update
RUN apt-get install -y ethereum curl
RUN curl -sL https://deb.nodesource.com/setup_6.x | /bin/sh -
RUN apt-get update
RUN apt-get install nodejs
RUN npm install -g gethdev
COPY gethdev.js /usr/gethdev.js
