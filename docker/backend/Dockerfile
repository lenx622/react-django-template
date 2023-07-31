FROM python:3.9
ENV PYTHONUNBUFFERED 1
RUN mkdir /code
WORKDIR /code
COPY . /code/

RUN apt-get update -y
RUN apt-get dist-upgrade -y
RUN apt-get install -y build-essential graphviz-dev graphviz pkg-config

RUN pip install -r requirements.txt
EXPOSE 8000
CMD [ "bash", "-c", "python manage.py runserver 0.0.0.0:8000"]
