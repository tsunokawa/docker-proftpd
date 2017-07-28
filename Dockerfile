FROM centos:7

RUN yum clean all && \
    yum -y update && \
    yum -y install epel-release.noarch && \
    yum -y --enablerepo=epel install proftpd.x86_64 proftpd-utils.x86_64 && \
    yum clean all

RUN mkdir /proftpd
VOLUME ["/proftpd"]
#WORKDIR /proftpd
#CMD ["/usr/sbin/proftpd", "-n", "-c", "/proftpd/proftpd.conf"]
CMD ["bash", "/proftpd/entrypoint.sh"]
EXPOSE 20
EXPOSE 21

