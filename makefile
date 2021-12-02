build:
	docker compose build

shell:
	docker compose run --rm app /bin/bash

run_etl:
	docker compose run --rm app python -m dbcp.cli

sql_shell:
	docker compose run --rm postgres bash -c 'psql -U $$POSTGRES_USER -h $$POSTGRES_HOST $$POSTGRES_DB'
