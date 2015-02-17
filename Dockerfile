FROM ubuntu:14.04
MAINTAINER István Koren <koren ÄT dbis.rwth-aachen.de>

# Let the container know that there is no tty
ENV DEBIAN_FRONTEND noninteractive

# Update base image
RUN sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list
RUN apt-get update -y
RUN apt-get upgrade -y

# Install required tools
RUN apt-get install software-properties-common -y && \
    add-apt-repository ppa:jon-severinsson/ffmpeg -y && \
    apt-get update -y && \
    apt-get install -y ffmpeg \
                    nodejs \
                    npm && \
    ln -s /usr/bin/nodejs /usr/bin/node

RUN mkdir /transcode
WORKDIR /transcode
VOLUME ["/transcode"]

CMD node index.js
