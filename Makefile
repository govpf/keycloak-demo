# Parametres
DATABASE_FILE=./data/database/postgres/
LDAP_CONFIG_FILE=./data/ldap/config/
LDAP_DATA_FILE=./data/ldap/data/

all: clean build run

build:
	docker-compose build

run:
	docker-compose up -d

clean:
	docker-compose down
	rm -fr $(DATABASE_FILE)
	rm -fr $(LDAP_CONFIG_FILE)/*
	rm -fr $(LDAP_DATA_FILE)/*