FROM python:3.7-alpine
 MAINTAINER Kaustav Sen

 ENV PYTHONUNBUFFERED 1

#Store list of dependencies in req file
 COPY ./requirements.txt /requirements.txt
 RUN pip install -r /requirements.txt

# Switch to app dir and copy the project
RUN mkdir /app
WORKDIR /app
COPY ./app /app

#Create user to run docker apps
RUN adduser -D user
USER user
