FROM python:3.11.0-alpine3.15@sha256:1567c44f47c8136752ee4301be2e94130a5f8e1fb7a0e737ccac28fb8f66fd0f

WORKDIR /usr/src/app

COPY ./wsdd/src/wsdd.py .

COPY ./init.sh .

ENTRYPOINT [ "./init.sh"]
