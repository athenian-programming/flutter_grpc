import 'dart:io';

import 'package:flutter_helloworld/src/generated/helloworld.pb.dart';
import 'package:flutter_helloworld/src/generated/helloworld.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class GreeterService extends GreeterServiceBase {
  @override
  Future<HelloReply> sayHello(ServiceCall call, HelloRequest request) async {
    return new HelloReply()..message = 'Hello, ${request.name}!';
  }

  @override
  Stream<HelloReply> sayHelloRepeatedly(ServiceCall call, HelloRequest request) async* {
    for (var i = 1; i < request.count + 1; i++) {
      yield HelloReply()..message = 'Hello, ${request.name}! [$i]';
      sleep(const Duration(milliseconds: 250));
    }
  }
}
