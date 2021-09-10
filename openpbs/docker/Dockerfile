FROM centos:centos8

#https://github.com/openpbs/openpbs/blob/master/INSTALL


WORKDIR /root
ADD ./openpbs_install.sh ./
RUN yum update -y && \
    yum install dnf && \
    bash openpbs_install.sh

RUN useradd pbsuser
