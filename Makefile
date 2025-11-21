.PHONY: up down ansible

up: 
	export CONTI_ENV=proba1 export CONTI_DB_NAME=proba1db &&\
	sh gen-ssh.sh &&\
	docker compose up -d
down:
	docker compose down
ansible:
	ansible-playbook playbook/motd.yml 
ping:
	ansible all -m ping 
