FROM python:3.11.0a3-alpine3.15@sha256:55706badd5d84fe5b16c78309f3d751db3fb1a5d8d9bfe06fb3f74a35ec03764

WORKDIR /usr/src/app

ADD https://raw.githubusercontent.com/christgau/wsdd/v0.6.4/src/wsdd.py ./wsdd.py

COPY ./init.sh .

ENTRYPOINT [ "./init.sh"]
