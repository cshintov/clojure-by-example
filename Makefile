ifneq (,$(wildcard ./.env))
    include .env
    export
    ENV_FILE_PARAM = --env-file .env
endif

new:
	docker-compose exec app lein new app ${APP} --to-dir ../${APP} --force 

shell:
	docker-compose exec app bash

repl:
	docker-compose exec app lein repl :headless
