FROM python:3.11.0a3-alpine3.15@sha256:2b9728aa485cb7cf3839b2d74a78cc7f4aa40089e5e806a0cf6647d94f10732c

WORKDIR /usr/src/app

ADD https://raw.githubusercontent.com/christgau/wsdd/v0.7.0/src/wsdd.py ./wsdd.py

COPY ./init.sh .

ENTRYPOINT [ "./init.sh"]
