FROM python:3.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
# 👇️ upgrade pip
RUN pip install --upgrade pip

ENV PIP_ROOT_USER_ACTION=ignore

RUN mkdir /charlie
WORKDIR /charlie
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
