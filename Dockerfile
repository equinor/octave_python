FROM centos:7

RUN yum install -y epel-release
RUN yum install octave -y
RUN yum install python36 -y
RUN yum install which -y
ENV LC_ALL=en_US.utf8
ENV LANG=en_US.utf8
RUN python3.6 -m ensurepip
RUN pip3 install pipenv

ENTRYPOINT ["bash"]
