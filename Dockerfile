FROM centos:7

RUN yum -y install epel-release && yum -y update && yum -y groupinstall "Development Tools" && yum install -y createrepo && yum clean all

CMD cd /build/rpm && ./build.sh
