#
Version: 1
 #
T00045139 - Edilberto Marrugo Gutierrez
 
FROM ubuntu:14.04 #MAINTAINER T00045139 RUN apt-get updtae && apt-get install -y nginx RUN echo 'T00045139-Edilberto Marrugo Gutiérrez' >/usr/share/ngin/html/index.html EXPOSE 80 
RUN \
  sed -i 's/# \(.*multiverse$\)/\1/g' /etc/apt/sources.list && \
  apt-get update && \
  apt-get -y upgrade && \
  apt-get install -y build-essential && \
  apt-get install -y software-properties-common && \
  apt-get install -y byobu curl git htop man unzip vim wget && \
  rm -rf /var/lib/apt/lists/*

# Add files.
ADD root/.bashrc /root/.bashrc
ADD root/.gitconfig /root/.gitconfig
ADD root/.scripts /root/.scripts

# Set environment variables.
ENV HOME /root

# Define working directory.
WORKDIR /root

# Define default command.
CMD ["bash"]
