FROM envoyproxy/envoy:16455d1ac6616bc6e0436c5e19465743e6d07be2
LABEL MAINTAINER="Nicholas J <nicholas.a.johns5@gmail.com>"

ENV diversion=1.2.1
ENV loglevel=debug

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y wget ca-certificates \
    && apt-get autoremove

RUN wget https://github.com/Yelp/dumb-init/releases/download/v${diversion}/dumb-init_${diversion}_amd64.deb \
    && dpkg -i dumb-init_${diversion}_amd64.deb

RUN mkdir -p /etc/envoy

COPY envoy.yaml /etc/envoy/envoy.yaml

EXPOSE 80
EXPOSE 9901

ENTRYPOINT ["/usr/bin/dumb-init", "--"]
CMD [ "/usr/local/bin/envoy", "--v2-config-only", "-l", "${loglevel}", "-c", "/etc/envoy/envoy.yaml" ]
