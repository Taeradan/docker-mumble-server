FROM ubuntu

RUN apt-get -y install software-properties-common
RUN add-apt-repository ppa:mumble/release

RUN apt-get -y update &&\
    apt-get -y install mumble-server

EXPOSE 64738 64738/udp

ENTRYPOINT ["/usr/sbin/murmurd", "-fg", "-ini", "/etc/mumble-server.ini"]
