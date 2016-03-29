FROM debian:jessie
RUN apt-get install git pip
RUN pip install gitchangelog
