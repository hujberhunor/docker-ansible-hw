# Conti-test docker img
FROM ubuntu:20.04

# Openssh server, sudo and tini (init)
RUN apt-get update && apt-get install -y sudo openssh-server tini && \
mkdir /var/run/sshd

# Ansible user and group + no sudo pass
groupadd -g 71000 ansible && useradd -m -u 71000 -g 71000 -s /bin/bash ansible && \
echo 'ansible ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers 
## ToDo? passwd?

# SSH key storage (need a better name)
RUN mkdir -p /home/ansible/.ssh && chown ansible:ansible /home/ansible/.ssh && \
    chmod 700 /home/ansible/.ssh

## Expose ssh port to outside
EXPOSE 22

# Tini as init 
ENTRYPOINT ["/usr/bin/tini", "--"] 

# Start ssh daemon
CMD ["/usr/sbin/sshd", "-D"]
