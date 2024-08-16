FROM python:3.10.8-slim-buster

RUN apt update && apt upgrade -y
RUN apt install git -y
COPY requirements.txt /requirements.txt

RUN cd /
RUN pip3 install -U pip && pip3 install -U -r requirements.txt
RUN mkdir /Aj_Flix_Hub_Fliter_Bot
WORKDIR /Aj_Flix_Hub_Fliter_Bot
COPY start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]
