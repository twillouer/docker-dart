FROM ubuntu

RUN apt-get update
RUN apt-get install -y wget unzip
WORKDIR /tmp
RUN wget http://storage.googleapis.com/dart-archive/channels/stable/release/latest/sdk/dartsdk-linux-x64-release.zip
RUN unzip dartsdk-linux-x64-release.zip
RUN mv dart-sdk /opt
ENV PATH /opt/dart-sdk/bin:$PATH
