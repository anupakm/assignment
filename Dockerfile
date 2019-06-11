# Base image
FROM ubuntu

RUN /bin/bash -c 'echo "Hello from Docker "'
COPY ./src/*.sh  ./ 
RUN /bin/bash today.sh \
RUN /bin/bash -c 'echo " Exit from DockerFile execution " '
