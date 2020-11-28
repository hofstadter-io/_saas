.PHONY: help
help:
	@cat Makefile
	@echo "no arg supplied"

.PHONY: server
server: gen build

.PHONY: gen
gen:
	@hof gen

.PHONY: build
build:
	@go build -o saas ./server/cmd/saas/

.PHONY: install
install:
	@go install -o saas ./server/cmd/saas/

.PHONY: db-up
db-up:
	docker run -d --rm -it \
		--name saas-db \
		-p 5432:5432 \
		-e POSTGRES_DB=saas \
		-e POSTGRES_USER=saas \
		-e POSTGRES_PASSWORD=saas \
		-v ${PWD}/data/db:/var/lib/postgresql/data \
		postgres:13

.PHONY: db-down
db-down:
	docker rm -f saas-db

.PHONY: db-clean
db-clean:
	sudo rm -rf ./data/db

.PHONY: dev-nuke
db-nuke: db-down db-clean

.PHONY: psql
psql:
	@docker run --rm -it --name psql \
		--network host \
		postgres:13 \
		psql postgresql://saas:saas@localhost:5432/saas

.PHONY: cloc
cloc:
	cloc --read-lang-def=$$HOME/hof/jumpfiles/assets/cloc_defs.txt hof.cue ./design/ ./config/ ./secret/
	cloc --read-lang-def=$$HOME/hof/jumpfiles/assets/cloc_defs.txt ./server/
