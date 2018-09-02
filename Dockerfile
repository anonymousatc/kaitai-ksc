FROM debian:jessie

RUN apt-get update \-y \
  && apt-get install gnupg2 -y
#  && apt-get install build-essential -y

#Install java, needed by kaitai
RUN set -ex && \
    echo 'deb http://deb.debian.org/debian jessie-backports main' \
      > /etc/apt/sources.list.d/jessie-backports.list && \
    apt update -y && \
    apt install -t \
      jessie-backports \
      openjdk-8-jre-headless \
      ca-certificates-java -y

RUN apt-key adv --keyserver hkp://pool.sks-keyservers.net --recv 379CE192D401AB61 > /dev/null \
  && apt-get install apt-transport-https -y \
  && echo "deb https://dl.bintray.com/kaitai-io/debian jessie main" | tee /etc/apt/sources.list.d/kaitai.list \
  && apt-get update \
  && apt-get install kaitai-struct-compiler -y
