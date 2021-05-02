FROM python:3-alpine

WORKDIR /usr/src/app

RUN apk add --no-cache curl bash
RUN curl https://raw.githubusercontent.com/christgau/wsdd/v0.6.4/src/wsdd.py -o wsdd.py 
RUN apk del curl

COPY docker-cmd.sh .

CMD [ "./docker-cmd.sh"]
