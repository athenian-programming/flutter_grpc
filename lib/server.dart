import 'package:flutter_helloworld/greeter_impl.dart';
import 'package:grpc/grpc.dart';

Future<Null> main(List<String> args) async {
  const port = 50051;
  final server = Server([new GreeterService()]);
  await server.serve(port: port);
  print('Server listening on port $port...');
}
