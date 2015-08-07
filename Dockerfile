FROM centos:7

RUN yum -y install epel-release && yum clean all
RUN yum -y update && yum -y groupinstall "Development Tools" && yum clean all

CMD cd /build/rpm && ./build.sh
