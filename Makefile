check:
	docker-compose run --rm lua luacheck ./src

test:
	docker-compose run --rm lua busted

build: check test

.PHONY: test
