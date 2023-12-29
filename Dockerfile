FROM quay.io/fedora/fedora:38-x86_64

MAINTAINER Travis Michette <tmichett@redhat.com>
 
RUN yum install -y sshpass  openssh-clients python3-pip libyaml rsync less filesystem && \
yum clean all

ENV ANSIBLE_HOST_KEY_CHECKING false

RUN pip3 install "ansible-lint[yamllint]" ansible-core ansible

RUN mkdir /ansible && chmod 755 /ansible

WORKDIR /ansible

ADD requirements.yml /ansible/

ADD requirements.txt /ansible/

RUN pip3 install -r requirements.txt

RUN ansible-galaxy collection install -r ./requirements.yml