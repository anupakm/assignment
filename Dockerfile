# Base image
FROM ubuntu

RUN /bin/bash -c 'echo "Hello from Dockerfile "'
COPY ./src/*.sh  ./ 
RUN /bin/bash today.sh
