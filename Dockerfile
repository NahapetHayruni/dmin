FROM ubuntu:16.04
RUN apt-get -y update && apt-get -y install wget
WORKDIR /app
ADD src /app/
RUN dpkg -i minergate-cli-release.deb 
CMD ./start.sh
