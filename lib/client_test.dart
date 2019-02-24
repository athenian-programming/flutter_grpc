import 'package:flutter_helloworld/grpc_commons.dart';
import 'package:flutter_helloworld/src/generated/helloworld.pb.dart';
import 'package:flutter_helloworld/src/generated/helloworld.pbgrpc.dart';

Future<Null> main(List<String> args) async {
  final channel = GrpcClientSingleton().client;
  final stub = new GreeterClient(channel);

  final name = args.isNotEmpty ? args[0] : 'world';

  try {
    final request = new HelloRequest()
      ..name = name
      ..count = 5;

    var resp1 = await stub.sayHello(request);
    print('Greeter client received: ${resp1.message}');

    await for (var resp in stub.sayHelloRepeatedly(request)) print('Greeter client received: ${resp.message}');
  } catch (e) {
    print('Caught error: $e');
  }

  await channel.shutdown();
}
