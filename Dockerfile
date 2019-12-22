FROM debian:buster

RUN apt update && \
 apt install -y nmap whois curl git dnsutils python2.7 python-pip iptables net-tools && \
 apt clean && \
 pip install shell && pip install dnsdumpster --user && pip install spam-lists && pip install beautifulsoup4 && pip install geopy

WORKDIR /scripts
RUN git clone https://github.com/whitelisthackers/wosind.git
RUN chmod 755 /scripts/*

WORKDIR /scripts/wosind
CMD "/scripts/wosind/start.sh"
