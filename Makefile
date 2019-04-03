generate-esdoc:
	docker-compose run --rm esdoc

generate-esdoc2:
	docker-compose run --rm esdoc2

init:
	scripts/pull-repos.sh

build:
	docker-compose build