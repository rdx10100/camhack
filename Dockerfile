# Dockerfile

# Script       : CamHack
# Author       : Rahul Pipliwal
# Github       : https://github.com/rdx10100
# Email        : rdx8@gmail.com
# Date         : 05-09-2021
# Main Language: Shell

# Download and import main images

# Operating system
FROM debian:latest

# Author info
LABEL MAINTAINER="https://www.pipliwal.xyz"

# Working directory
WORKDIR /CamHack/
# Add files 
ADD . /CamHack

# Installing other packages
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install curl unzip wget -y
RUN apt-get install --no-install-recommends php -y
RUN apt-get clean

# Main command
CMD ["./ch.sh", "--no-update"]

## Wanna run it own? Try following commnads:

## "sudo docker build . -t kasroudra/camhacker:latest", "sudo docker run --rm -it kasroudra/pyphisher:latest"

## "sudo docker pull kasroudra/camhacker", "sudo docker run --rm -it kasroudra/camhacker"
