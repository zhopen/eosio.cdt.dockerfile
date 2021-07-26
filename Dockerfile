FROM ubuntu:18.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install openssl ca-certificates curl wget make cmake build-essential && rm -rf /var/lib/apt/lists/*
 
RUN wget https://github.com/EOSIO/eosio.cdt/releases/download/v1.7.0/eosio.cdt_1.7.0-1-ubuntu-18.04_amd64.deb

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y ./eosio.cdt_1.7.0-1-ubuntu-18.04_amd64.deb

RUN rm ./eosio.cdt_1.7.0-1-ubuntu-18.04_amd64.deb
