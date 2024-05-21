start_db:
	docker compose up -d

seed:
	PGPASSWORD=postgres psql -U postgres -d postgres -h localhost -c "CREATE TABLE test_table (id SERIAL PRIMARY KEY, name VARCHAR(50),created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);INSERT INTO test_table (name) VALUES('Alice'),('Bob'),('Charlie');"