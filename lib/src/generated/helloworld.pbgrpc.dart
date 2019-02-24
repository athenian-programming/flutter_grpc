///
//  Generated code. Do not modify.
//  source: helloworld.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

import 'dart:async' as $async;

import 'package:grpc/grpc.dart';

import 'helloworld.pb.dart';

export 'helloworld.pb.dart';

//  Generated code. Do not modify.
//  source: helloworld.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

class GreeterClient extends Client {
  static final _$sayHello = new ClientMethod<HelloRequest, HelloReply>('/helloworld.Greeter/SayHello',
      (HelloRequest value) => value.writeToBuffer(), (List<int> value) => new HelloReply.fromBuffer(value));
  static final _$sayHelloRepeatedly = new ClientMethod<HelloRequest, HelloReply>(
      '/helloworld.Greeter/SayHelloRepeatedly',
      (HelloRequest value) => value.writeToBuffer(),
      (List<int> value) => new HelloReply.fromBuffer(value));

  GreeterClient(ClientChannel channel, {CallOptions options}) : super(channel, options: options);

  ResponseFuture<HelloReply> sayHello(HelloRequest request, {CallOptions options}) {
    final call = $createCall(_$sayHello, new $async.Stream.fromIterable([request]), options: options);
    return new ResponseFuture(call);
  }

  ResponseStream<HelloReply> sayHelloRepeatedly(HelloRequest request, {CallOptions options}) {
    final call = $createCall(_$sayHelloRepeatedly, new $async.Stream.fromIterable([request]), options: options);
    return new ResponseStream(call);
  }
}

abstract class GreeterServiceBase extends Service {
  String get $name => 'helloworld.Greeter';

  GreeterServiceBase() {
    $addMethod(new ServiceMethod<HelloRequest, HelloReply>('SayHello', sayHello_Pre, false, false,
        (List<int> value) => new HelloRequest.fromBuffer(value), (HelloReply value) => value.writeToBuffer()));
    $addMethod(new ServiceMethod<HelloRequest, HelloReply>('SayHelloRepeatedly', sayHelloRepeatedly_Pre, false, true,
        (List<int> value) => new HelloRequest.fromBuffer(value), (HelloReply value) => value.writeToBuffer()));
  }

  $async.Future<HelloReply> sayHello_Pre(ServiceCall call, $async.Future request) async {
    return sayHello(call, await request);
  }

  $async.Stream<HelloReply> sayHelloRepeatedly_Pre(ServiceCall call, $async.Future request) async* {
    yield* sayHelloRepeatedly(call, (await request) as HelloRequest);
  }

  $async.Future<HelloReply> sayHello(ServiceCall call, HelloRequest request);

  $async.Stream<HelloReply> sayHelloRepeatedly(ServiceCall call, HelloRequest request);
}
