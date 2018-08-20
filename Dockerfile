FROM library/postgres
COPY init-shoes-db.sql /docker-entrypoint-initdb.d/



