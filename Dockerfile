FROM ubuntu:15.04

RUN apt-get update \
    && apt-get install -y gcc libncurses5-dev make locales git tar sed bc mercurial binutils build-essential g++ bash patch gzip bzip2 perl tar cpio python unzip rsync wget

RUN locale-gen "en_US.UTF-8" \
    && dpkg-reconfigure locales

ADD http://buildroot.uclibc.org/downloads/buildroot-2015.05.tar.gz /opt/

RUN cd /opt \
    && tar -xvf buildroot-2015.05.tar.gz \
    && mv buildroot-2015.05 buildroot
