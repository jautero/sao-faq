FROM debian:jessie
RUN apt-get update && apt-get upgrade -y && apt-get install -y git python-pip debiandoc-sgml 
RUN apt-get update && apt-get install -y pandoc
RUN pip install gitchangelog
VOLUME /sao-faq
