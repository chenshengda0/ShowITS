FROM rabbitmq:3-management

RUN apt -y update && apt -y upgrade && apt install -y vim sudo screen haproxy
COPY ./haproxy/init-start.sh /opt/init-start.sh
COPY ./haproxy/.erlang.cookie /root/.erlang.cookie
COPY ./haproxy/haproxy.cnf /opt/haproxy.cnf
RUN chmod -R 400 /root/.erlang.cookie
RUN sed -i -e "s/\r//" /opt/init-start.sh
RUN sed -i -e "s/\r//" /opt/haproxy.cnf
RUN chmod -R 777 /opt/init-start.sh
EXPOSE 35672
CMD date >> /opt/test.md && /opt/init-start.sh >> /opt/test.md 2>&1 && while true; do sleep 3000;done