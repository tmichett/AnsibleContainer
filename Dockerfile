FROM quay.io/fedora/fedora:34-x86_64

MAINTAINER Travis Michette <tmichett@redhat.com>
 
RUN yum install -y ansible sshpass openssh-clients && \
yum clean all

ENV ANSIBLE_HOST_KEY_CHECKING false

RUN mkdir /ansible

WORKDIR /ansible


