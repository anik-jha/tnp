FROM nvidia/cuda:10.2-devel-ubuntu18.04

RUN apt-get update &&\
	apt-get install -y build-essential &&\
	apt-get install -y python3.6 &&\
	apt-get install -y python3-dev &&\
	apt-get install -y python3-pip 

RUN pip3 install --upgrade pip

WORKDIR /home/ssd/projects/aws/TrackNPred

COPY new_requirements.txt .

RUN pip3 install -r new_requirements.txt
