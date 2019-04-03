generate: generate-esdoc generate-esdoc2 generate-yuidoc generate-jsdoc generate-docco

generate-esdoc:
	docker-compose run --rm esdoc

generate-esdoc2:
	docker-compose run --rm esdoc2

generate-yuidoc:
	docker-compose run --rm yuidoc

generate-jsdoc:
	docker-compose run --rm jsdoc

generate-docco:
	docker-compose run --rm docco

generate-documentationjs:
	docker-compose run --rm documentationjs

init: build
	scripts/pull-repos.sh

build:
	docker-compose build