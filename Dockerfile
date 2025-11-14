# Conti-test docker img
FROM ubuntu:20.04

# Openssh server
# TODO intsall tini
RUN apt-get update && apt-get install -y sudo openssh-server

# Ansible user and group
groupadd -g 71000 ansible && 
