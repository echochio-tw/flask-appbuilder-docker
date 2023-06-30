FROM tiangolo/uwsgi-nginx-flask:python3.8

# FOR GCP CLOUD RUN
# ENV PYTHONUNBUFFERED True

RUN apt update
RUN yes | apt install vim

COPY ./ /app
WORKDIR /app

ENV STATIC_URL /app/static
ENV STATIC_PATH /var/www/app/static

RUN pip install --no-cache-dir -r /app/requirements.txt

#FOR GCP CLOUD RUN
#CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 --timeout 0 main:app
