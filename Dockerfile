FROM alpine:3.10

COPY . local/
WORKDIR ./local

CMD [ "sh", "./streaming.sh"]