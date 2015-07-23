FROM orionstein/buildroot-builder:latest

WORKDIR /opt/buildroot

USER root

RUN mkdir -p output \
    && mkdir -p dl \
    && chown -R buildroot:buildroot /opt/buildroot \
    && chown -R buildroot:buildroot /opt/buildroot/output \
    && chown -R buildroot:buildroot /opt/buildroot/dl

VOLUME /opt/buildroot/output

VOLUME /opt/buildroot/dl

USER buildroot
