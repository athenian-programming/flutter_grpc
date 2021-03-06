# Flutter Hello World

A simple Flutter project that uses [gRPC](https://grpc.io) for server communications.

## Getting Started

Build the gRPC stubs with: `make stubs`

Run the server locally with: `dart bin/server.dart`

Run the server via docker with: `docker run -p 50051:50051 -d pambrose/flutter_grpc:0.1.0`

Build a docker image with `make build-docker`

Push a docker image with `make push-docker`

## Screenshot

![screenshot](https://github.com/athenian-programming/flutter_grpc/raw/master/docs/SimulatorScreenshot.png "Flutter Hello World Screenshot")

## Acknowledgement

Thanks to [Ishaan Bahal](https://medium.com/@ishaanbahal) for providing a [good starting point](https://medium.com/flutter-community/flutter-grpc-810f87612c6d) for this repo.