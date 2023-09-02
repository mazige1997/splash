FROM debian:stable-slim

RUN apt update \
  && apt install git wget \
  && cd /usr/bin \
  && wget https://github.com/Ericwyn/miniServer/releases/download/v2.0/miniServer \
  && cd /etc \
  && mkdir bing-rewards \
  && cd bing-rewards \
  && git clone https://github.com/mazige1997/bing-rewards

ENTRYPOINT ["miniServer", "-d"]
CMD ["/etc/bing-rewards"]
EXPOSE 443

