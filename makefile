connect-db:
	docker-compose exec db psql -U postgres -d mydb
run-sql:
	docker-compose exec db psql -U postgres -d mydb -f main.sql
echo:
	docker-compose exec db cd ./src