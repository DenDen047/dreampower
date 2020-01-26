FROM pytorch/pytorch:latest

RUN apt-get update -y && apt-get install -y libopencv-dev

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
