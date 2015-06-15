FROM ubuntu
MAINTAINER Will Mayger
RUN echo "deb http://archive.ubuntu.com/ubuntu/ $(lsb_release -sc) main universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y tar git curl nano wget dialog net-tools build-essential
RUN apt-get install -y python python-dev python-distribute python-pip
RUN git clone https://github.com/WillMayger/python-json
RUN pip install -r /python-json/requirements.txt
EXPOSE 80
WORKDIR /python-json/
CMD python /python-json/server.py
