FROM ubuntu:bionic
ENV LC-ALL en_US.UTF-8
WORKDIR /
#Sets the wroking directory within the container.
RUN apt-get update && apt-get upgrade -y
#Installs available upgrades of all packages.
RUN apt-get install python3-pip -y 
RUN apt-get install -y\
    curl \
    git \
    apt-utils\
    python3 \
    python3-dev
RUN pip3 install Flask==1.1.2 torchvision==0.6.0
COPY "./startScript.sh" .
ENTRYPOINT ["bash", "startScript.sh"]
