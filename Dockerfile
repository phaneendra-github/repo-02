## This is our new  Dockerfile

#FROM is to decide what is the base OS to build our own image. 
FROM centos:latest

# The location where the actions would be executed. 
WORKDIR /opt

## THE USER TO RUN THE COMMANDS BELOW. 
USER root

## ADD and COPY allows us to copy files from local into the image
##ADD 
COPY . . 

## Actuall commands to run 
RUN mkdir docker-test
#RUN cp . /opt/docker-test
RUN cd docker-test
RUN ls

WORKDIR /opt/docker-test


# To run the commands to start the container
CMD "/bin/bash"

