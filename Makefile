.PHONY: up down ansible

up: 
	sh gen-ssh.sh
	docker-compose up -d
down:
	docker-compose down
ansible:
	ansible-playbook playbook/motd.yml 
ping:
	ansible all -m ping 
