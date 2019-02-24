PROTO_ROOT_DIR = $(shell brew --prefix)/Cellar/protobuf/3.6.1.3_1/include

default: stubs

## Dart requires you to manually ship all google provided proto files too.
stubs:
	mkdir -p lib/src/generated
	protoc -I=proto --dart_out=grpc:lib/src/generated proto/*.proto
	protoc -I$(PROTO_ROOT_DIR) --dart_out=lib/src/generated $(PROTO_ROOT_DIR)/google/protobuf/*.proto

clean:
	rm -rf lib/src/generated
