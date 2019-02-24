import 'dart:io';

import 'package:flutter_helloworld/src/generated/helloworld.pb.dart';
import 'package:flutter_helloworld/src/generated/helloworld.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class GreeterService extends GreeterServiceBase {
  @override
  Future<HelloReply> sayHello(ServiceCall call, HelloRequest request) async {
    final reply = HelloReply()
      ..message = 'Hello, ${request.name}!';
    print("Responding with $reply");
    return reply;
  }

  @override
  Stream<HelloReply> sayHelloRepeatedly(ServiceCall call, HelloRequest request) async* {
    for (var i = 1; i < request.count + 1; i++) {
      final reply = HelloReply()
        ..message = 'Hello, ${request.name}! [$i]';
      print("Responding with $reply");
      yield reply;
      sleep(const Duration(milliseconds: 250));
    }
  }
}
