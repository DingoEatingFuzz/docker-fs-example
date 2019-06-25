FROM alpine:3.10

RUN apk add less

COPY . .

CMD [ "sh", "./streaming.sh"]