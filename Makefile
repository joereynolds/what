check:
	docker-compose run --rm lua luacheck ./src

executable:
	docker-compose run --rm lua ./build/create-executable.sh

test:
	docker-compose run --rm lua busted

build: check test

.PHONY: test
