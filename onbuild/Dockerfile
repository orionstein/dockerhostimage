FROM orionstein/buildroot-builder:latest

WORKDIR /opt/buildroot

ONBUILD ADD .config /opt/buildroot/

ONBUILD RUN chown buildroot:buildroot .config

ONBUILD USER buildroot

CMD ["make"]
