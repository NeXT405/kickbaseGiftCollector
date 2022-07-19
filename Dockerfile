FROM python:3.7-bullseye

RUN mkdir /script
WORKDIR /script

RUN pip3 install --no-cache-dir telepot
RUN pip3 install --no-cache-dir Kickbase-API

ADD main.py ./main.py
ADD entrypoint.sh ./entrypoint.sh
RUN chmod +x ./main.py
RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["bash", "./entrypoint.sh"]