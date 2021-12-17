FROM python:3.11.0a3-alpine3.15

WORKDIR /usr/src/app

ADD https://raw.githubusercontent.com/christgau/wsdd/v0.6.4/src/wsdd.py ./wsdd.py

COPY ./init.sh .

ENTRYPOINT [ "./init.sh"]
