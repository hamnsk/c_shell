FROM centos:7.3.1611

RUN yum update -y && \
    yum install -y epel-release && \
    yum install -y mc git gnupg screen && \
    yum clean all

#set local data
RUN rm -rf /etc/localtime && \
    ln -s /usr/share/zoneinfo/Europe/Moscow /etc/localtime && \
    echo LANG="\"ru_RU.UTF-8"\" > /etc/sysconfig/i18n && \
    echo SYSFONT="\"latarcyrheb-sun16"\" >> /etc/sysconfig/i18n

ADD .screenrc /root/.screenrc