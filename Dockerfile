FROM tiangolo/uwsgi-nginx-flask:python3.8

RUN apt update
RUN yes | apt install vim

COPY ./ /app
WORKDIR /app

ENV STATIC_URL /app/static
ENV STATIC_PATH /var/www/app/static

RUN pip install --no-cache-dir -r /app/requirements.txt
