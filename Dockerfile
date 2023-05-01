#FROM python:3.11.0-slim as app

FROM ramsainanduri/gromacs:2023.1 as GROWeb_app


LABEL base_image="GROWeb_app"
LABEL about.home="https://github.com/ramsainanduri/GROWeb"

WORKDIR /

RUN apt-get update &&\
    apt-get upgrade -y &&\
    apt install wget build-essential libncursesw5-dev libssl-dev libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev software-properties-common &&\

    add-apt-repository ppa:deadsnakes/ppa -y &&\
    apt-get install python3.11 &&\
    apt-get install pip &&\
    apt-get update && apt-get upgrade &&\
    pip install --upgrade pip setuptools wheel &&\
    pip install gmxapi &&\




