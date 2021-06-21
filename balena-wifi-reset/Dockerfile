FROM balenalib/raspberrypi4-64-alpine:run

COPY reset.sh init.sh /usr/bin/

RUN chmod +x /usr/bin/reset.sh /usr/bin/init.sh

CMD [ "/usr/bin/init.sh" ]