FROM quay.io/fedora/fedora:34-x86_64

MAINTAINER Travis Michette <tmichett@redhat.com>
 
RUN yum install -y sshpass ansible openssh-clients python3-pip && \
yum clean all

ENV ANSIBLE_HOST_KEY_CHECKING false

RUN pip3 install "ansible-lint[yamllint]"

RUN mkdir /ansible

WORKDIR /ansible


