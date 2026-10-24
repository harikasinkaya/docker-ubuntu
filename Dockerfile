FROM ubuntu:20.04

# MAINTAINER yerine güncel kullanım olan LABEL kullanıyoruz
LABEL maintainer="isim@ornek.com"

# PPA deposunu güncel deadsnakes/ppa olarak değiştiriyoruz
RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get -y dist-upgrade && \
    DEBIAN_FRONTEND=noninteractive apt-get -y install software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    apt-get update
    
# Kendi projenize ait diğer komutlarınızı buranın altına ekleyebilirsiniz...
