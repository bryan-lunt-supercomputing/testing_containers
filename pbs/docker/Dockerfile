FROM centos:centos8

RUN yum update -y && \
    yum install -y make git && \
    yum install -y libtool libedit libxml2-devel openssl openssl-libs openssl-devel gcc gcc-c++ boost-devel 

WORKDIR /root
RUN git clone https://github.com/adaptivecomputing/torque.git -b v5.1.1 torque-v5.1.1
#RUN curl -L -O http://www.adaptivecomputing.com/download/torque/torque-5.0.0.tar.gz && tar -xzvof torque-v5.0.0.tar.gz
#RUN cd torque-v5.1.1 && \
#    bash autogen.sh && \
#    bash ./configure --prefix=/opt/torque
