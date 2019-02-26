PROTO_ROOT_DIR = $(shell brew --prefix)/Cellar/protobuf/3.6.1.3_1/include
VERSION=0.1.0

default: clean stubs

## Dart requires you to manually ship all google provided proto files too.
stubs:
	mkdir -p lib/src/generated
	protoc -I=protos --dart_out=grpc:lib/src/generated protos/*.proto
	protoc -I$(PROTO_ROOT_DIR) --dart_out=lib/src/generated $(PROTO_ROOT_DIR)/google/protobuf/*.proto

clean:
	rm -rf build lib/src/generated

run-local:
	dart bin/server.dart

run-docker:
	docker run -p 50051:50051 pambrose/flutter_helloworld:${VERSION}

build-docker:
	docker build -t pambrose/flutter_helloworld:${VERSION} .

push-docker:
	docker push pambrose/flutter_helloworld:${VERSION}
