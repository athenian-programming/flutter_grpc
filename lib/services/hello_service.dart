import 'package:flutter_helloworld/src/generated/helloworld.pb.dart';
import 'package:flutter_helloworld/src/generated/helloworld.pbgrpc.dart';
import 'package:grpc/grpc.dart';

class HelloService {
  static Future<HelloReply> sayHello(ClientChannel clientChannel, String name) async {
    var client = GreeterClient(clientChannel);
    return await client.sayHello(HelloRequest()
      ..name = name
      ..count = 1);
  }

  static Stream<HelloReply> sayHelloRepeatedly(ClientChannel clientChannel, String name, int count) async* {
    var client = GreeterClient(clientChannel);
    var i = 0;
    await for (var hello in client.sayHelloRepeatedly(HelloRequest()
      ..name = name
      ..count = count)) {
      // print("Got a name ${i++}");
      yield hello;
    }
  }
}
