FROM python:3.11.0a3-alpine3.15@sha256:600f46a53e2563a1bf94b882edfbf5312daed59aaf0d0ea22d554fc5ad58c0e9

WORKDIR /usr/src/app

ADD https://raw.githubusercontent.com/christgau/wsdd/v0.6.4/src/wsdd.py ./wsdd.py

COPY ./init.sh .

ENTRYPOINT [ "./init.sh"]
