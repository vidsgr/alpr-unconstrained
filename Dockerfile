From nvidia/cuda:11.1.1-devel-ubuntu18.04
RUN mkdir /workspace
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y tzdata libopencv-dev vim wget python2.7 python-pip
#RUN ln -s /usr/bin/python2.7 /usr/bin/python
RUN pip2 install opencv-python==4.2.0.32 
RUN pip install keras==2.2.4 tensorflow==1.5.0
WORKDIR /workspace
