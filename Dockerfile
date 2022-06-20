FROM mailhog/mailhog

ADD mailhog.conf /etc/supervisor/conf.d/mailhog.conf

ADD start.sh .

USER root
RUN chmod +x ./start.sh

ENTRYPOINT ["./start.sh"]