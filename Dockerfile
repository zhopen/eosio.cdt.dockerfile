FROM ubuntu:18.04

RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install openssl ca-certificates curl wget make cmake build-essential && rm -rf /var/lib/apt/lists/*
 
RUN wget  https://github.com/EOSIO/eosio.cdt/releases/download/v1.8.1/eosio.cdt-1.8.1.el7.x86_64.rpm

RUN DEBIAN_FRONTEND=noninteractive apt-get install -y ./eosio.cdt-1.8.1.el7.x86_64.rpm

RUN rm  https://github.com/EOSIO/eosio.cdt/releases/download/v1.8.1/eosio.cdt-1.8.1.el7.x86_64.rpm
