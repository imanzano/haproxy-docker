FROM       ubuntu
RUN apt-get update && apt-get install -y procps
RUN apt-get install -y vim
RUN apt-get install -y net-tools haproxy supervisor socat
COPY haproxy.cfg /etc/haproxy/haproxy.cfg
COPY haproxy-remote.conf /etc/default/haproxy-remote.conf 
COPY haproxy-remote /etc/init.d/haproxy-remote
RUN chmod 775 /etc/init.d/haproxy-remote
RUN mkdir -p /var/log/supervisor
ADD supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord", "-n"]

EXPOSE 8089 1936 7777