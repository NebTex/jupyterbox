FROM python:3.3.5

ADD . /box

WORKDIR /box/server


RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    rm get-pip.py


RUN pip3 install -r requirements.txt


