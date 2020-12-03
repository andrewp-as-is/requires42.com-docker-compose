FILE:=requires42.com.yml
SSH_HOSTNAME:=aws

all:
	make -B cp
	make -B stop
	make -B start
	make -B logs

cp:
	scp $(FILE) $(SSH_HOSTNAME):$(FILE)

start:
	ssh $(SSH_HOSTNAME) sudo docker-compose -f $(FILE) up -d

stop:
	ssh $(SSH_HOSTNAME) sudo docker-compose -f $(FILE) down;:

logs:
	ssh $(SSH_HOSTNAME) sudo docker-compose -f $(FILE) logs
