FROM python:slim-bookworm

RUN apt update && apt install git -y

COPY requirements.txt /lib/python-app/requirements.txt

ENV SHELL="/bin/bash"

RUN python -m pip install -r /lib/python-app/requirements.txt

RUN useradd python-user --home-dir=/home/python-user

USER python-user

WORKDIR /home/python-user

ENTRYPOINT sleep infinity