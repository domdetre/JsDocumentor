generate:
	docker-compose run --rm esdocker

init:
	scripts/pull-repos.sh

build:
	docker-compose build