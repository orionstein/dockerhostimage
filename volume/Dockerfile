FROM orionstein/buildroot-builder:latest

WORKDIR /opt/buildroot

USER root

RUN mkdir -p output \
    && chown -R buildroot:buildroot /opt/buildroot \
    && chown -R buildroot:buildroot /opt/buildroot/* \
    && ls -la && ls -la output

VOLUME /opt/buildroot/output

VOLUME /opt/buildroot/dl

USER buildroot
