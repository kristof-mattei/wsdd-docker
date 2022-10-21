FROM python:3.11.0rc2-alpine3.15@sha256:e95f3a98b368530e1da38ac0e231b40a398bfac6bbeeb62d25ba72ce631a62a9

WORKDIR /usr/src/app

ADD https://raw.githubusercontent.com/christgau/wsdd/v0.7.0/src/wsdd.py ./wsdd.py

COPY ./init.sh .

ENTRYPOINT [ "./init.sh"]
