FROM alpine:3.10

COPY . local/

CMD [ "sh", "local/streaming.sh"]