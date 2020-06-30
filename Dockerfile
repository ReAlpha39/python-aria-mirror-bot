FROM archie9211/python-aria-mirror-bot:latest 

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

COPY . .
COPY netrc /root/.netrc
RUN chmod +x aria.sh

CMD ["bash","start.sh"]


