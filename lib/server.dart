import 'package:flutter_helloworld/greeter_impl.dart';
import 'package:grpc/grpc.dart';

Future<Null> main(List<String> args) async {
  final server = Server([new GreeterService()]);
  await server.serve(port: 50051);
  print('Server listening...');
}
