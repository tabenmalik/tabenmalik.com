FROM ubuntu:16.04
MAINTAINER Taben Malik

RUN apt-get update -y
RUN apt-get install -y python3 python3-pip

ENV FLASK_APP=app
ENV LC_ALL=C.UTF-8
ENV LANG=C.UTF-8
COPY requirements.txt /tabenmalik.com/requirements.txt
RUN pip3 install -r /tabenmalik.com/requirements.txt

CMD ["flask", "run", "--host=0.0.0.0"]
