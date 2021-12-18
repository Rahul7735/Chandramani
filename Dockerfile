FROM    centos:7 AS base

RUN     yum -y install libgomp && \
        yum clean all;


FROM        base AS build

WORKDIR     /tmp/workdir
RUN     buildDeps="autoconf \
                   automake \
                   bzip2 \
                   bzip2-devel \
                   cmake3 \
                   diffutils \
                   expat-devel \
                   file \
                   gcc \
                   gcc-c++ \
                   git \
                   gperf \
                   libtool \
                   libffi-devel \
                   make \
                   perl \
                   srt-libs \
                   openssl-devel \
                   readline-devel sqlite sqlite-devel openssl-devel xz xz-devel \
                   tar \
                   yasm 



