FROM python:3.6-slim

LABEL com.trainologic.env="production"
LABEL com.trainologic.git.commut="123123"

RUN mkdir /app

COPY . /app/

RUN pip install -r /app/requirements.txt

ENTRYPOINT [ "python", "/app/app.py" ]

