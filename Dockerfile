FROM ubuntu:15.04

RUN apt-get update \
    && apt-get install -y \
                          apt-utils \
                          autoconf \
                          automake \
                          bash \
                          bc \
                          binutils \
                          bison \
                          build-essential \
                          bzip2 \
                          cpio \
                          flex \
                          gcc \
                          gcc-multilib \
                          gettext \
                          git \
                          gperf \
                          gzip \
                          g++ \
                          libpng12-dev \
                          libncurses5-dev \
                          libglib2.0-dev \
                          libgtk2.0-dev \
                          libtool \
                          libxp-dev \
                          libxt-dev \
                          locales \
                          make \
                          mercurial \
                          patch \
                          perl \
                          python \
                          rsync \
                          sed \
                          tar \
                          texinfo \
                          unzip \
                          wget \
    && apt-get upgrade -y \
    && apt-get dist-upgrade -y \
    && apt-get autoremove

RUN locale-gen "en_US.UTF-8" \
    && dpkg-reconfigure locales

ADD http://buildroot.uclibc.org/downloads/buildroot-2015.05.tar.gz /opt/

RUN cd /opt \
    && tar -xvf buildroot-2015.05.tar.gz \
    && mv buildroot-2015.05 buildroot \
    && rm buildroot-2015.05.tar.gz

RUN useradd buildroot -m -s /bin/bash \
    && chown -R buildroot:buildroot /opt/buildroot

USER buildroot
