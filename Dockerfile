# syntax=docker/dockerfile:1
FROM python:3.9-slim-buster

WORKDIR /app


# Define an argument with a default value
ARG VARNAME=init

# Set an environment variable using the ARG value
ENV VARNAME=$VARNAME

RUN echo "my variable is: $VARNAME"


COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 8000

CMD [ "gunicorn", "containers_python_django.wsgi:application", "--bind", "0.0.0.0:8000" ]
