FROM python:3-alpine

WORKDIR /usr/src/app

ADD https://raw.githubusercontent.com/christgau/wsdd/v0.6.4/src/wsdd.py ./wsdd.py

COPY docker-cmd.sh .

ENTRYPOINT [ "./docker-cmd.sh"]
