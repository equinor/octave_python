FROM ubuntu:18.04

RUN apt update
RUN apt install octave -y
RUN apt install python3.6 python3-pip -y
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
RUN pip3 install pipenv
RUN apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
