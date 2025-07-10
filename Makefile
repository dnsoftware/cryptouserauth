PROJECT="protos"

default:
	echo ${PROJECT}



migrate:
	go run ./cmd/migrator --storage-path=./internal/storage/sso.db --migrations-path=./migrations

migrate-test:
	go run ./cmd/migrator --storage-path=./internal/storage/sso.db --migrations-path=./tests/migrations --migrations-table=migrations_test

