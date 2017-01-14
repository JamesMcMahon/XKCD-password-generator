FROM python:3-alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY . /usr/src/app

RUN python setup.py install

ENTRYPOINT [ "python", "./xkcdpass/xkcd_password.py" ]