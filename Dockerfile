FROM ubuntu:18.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install openssl ca-certificates curl wget make cmake&& rm -rf /var/lib/apt/lists/*
 
RUN wget https://github.com/EOSIO/eosio.cdt/releases/download/v1.6.2/eosio.cdt_1.8.0-rc1-1-ubuntu-18.04_amd64.deb

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y ./eosio.cdt_1.8.0-rc1-1-ubuntu-18.04_amd64.deb

RUN rm ./eosio.cdt_1.8.0-rc1-1-ubuntu-18.04_amd64.deb 
