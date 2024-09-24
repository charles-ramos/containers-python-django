FROM python:3.9-slim-buster

WORKDIR /app

RUN pip install --upgrade pip

COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

COPY . .

EXPOSE 8000

CMD [ "gunicorn", "containers_python_django.wsgi:application", "--bind", "0.0.0.0:8000" ]
