compile:
	protoc api/v1/*.proto \
	       --go_out=. \
				 --go-grpc_out=. \
				 --go_opt=paths=source_relative \
				 --go-grpc_opt=paths=source_relative \
				 --go-grpc_opt require_unimplemented_servers=false \
				 --proto_path=.

test:
	go test -race ./...
