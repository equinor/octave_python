FROM ubuntu:bionic
ARG PYTHON_VERSION=3.7

RUN apt-get update
RUN apt-get install octave -y
RUN apt-get install python$PYTHON_VERSION-minimal python3-pip -y
RUN update-alternatives --install /usr/bin/python3 python3  /usr/bin/python$PYTHON_VERSION 1
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
RUN pip3 install pipenv
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
