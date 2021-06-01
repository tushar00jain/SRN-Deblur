FROM tensorflow/tensorflow:1.4.0-gpu

WORKDIR /workdir

RUN apt-get update
RUN apt-get install wget

RUN pip install --upgrade pip
RUN pip install debugpy
RUN pip install numpy scikit-image scipy
