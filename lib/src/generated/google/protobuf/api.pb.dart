///
//  Generated code. Do not modify.
//  source: google/protobuf/api.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'source_context.pb.dart' as $0;
import 'type.pb.dart' as $2;
import 'type.pbenum.dart' as $2;

//  Generated code. Do not modify.
//  source: google/protobuf/api.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import
// ignore: UNUSED_SHOWN_NAME


class Api extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Api', package: const $pb.PackageName('google.protobuf'))
    ..aOS(1, 'name')
    ..pp<Method>(2, 'methods', $pb.PbFieldType.PM, Method.$checkItem, Method.create)..pp<$2.Option>(
        3, 'options', $pb.PbFieldType.PM, $2.Option.$checkItem, $2.Option.create)
    ..aOS(4, 'version')
    ..a<$0.SourceContext>(5, 'sourceContext', $pb.PbFieldType.OM, $0.SourceContext.getDefault, $0.SourceContext.create)
    ..pp<Mixin>(6, 'mixins', $pb.PbFieldType.PM, Mixin.$checkItem, Mixin.create)
    ..e<$2.Syntax>(7, 'syntax', $pb.PbFieldType.OE, $2.Syntax.SYNTAX_PROTO2, $2.Syntax.valueOf, $2.Syntax.values)
    ..hasRequiredFields = false
  ;

  Api() : super();

  Api.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);

  Api.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);

  Api clone() =>
      new Api()
        ..mergeFromMessage(this);

  Api copyWith(void Function(Api) updates) => super.copyWith((message) => updates(message as Api));

  $pb.BuilderInfo get info_ => _i;

  static Api create() => new Api();

  static $pb.PbList<Api> createRepeated() => new $pb.PbList<Api>();

  static Api getDefault() =>
      _defaultInstance ??= create()
        ..freeze();
  static Api _defaultInstance;

  static void $checkItem(Api v) {
    if (v is! Api) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get name => $_getS(0, '');

  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);

  void clearName() => clearField(1);

  List<Method> get methods => $_getList(1);

  List<$2.Option> get options => $_getList(2);

  String get version => $_getS(3, '');

  set version(String v) {
    $_setString(3, v);
  }

  bool hasVersion() => $_has(3);

  void clearVersion() => clearField(4);

  $0.SourceContext get sourceContext => $_getN(4);

  set sourceContext($0.SourceContext v) {
    setField(5, v);
  }

  bool hasSourceContext() => $_has(4);

  void clearSourceContext() => clearField(5);

  List<Mixin> get mixins => $_getList(5);

  $2.Syntax get syntax => $_getN(6);

  set syntax($2.Syntax v) {
    setField(7, v);
  }

  bool hasSyntax() => $_has(6);

  void clearSyntax() => clearField(7);
}

class Method extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Method', package: const $pb.PackageName('google.protobuf'))
    ..aOS(1, 'name')..aOS(2, 'requestTypeUrl')
    ..aOB(3, 'requestStreaming')
    ..aOS(4, 'responseTypeUrl')
    ..aOB(5, 'responseStreaming')
    ..pp<$2.Option>(6, 'options', $pb.PbFieldType.PM, $2.Option.$checkItem, $2.Option.create)
    ..e<$2.Syntax>(7, 'syntax', $pb.PbFieldType.OE, $2.Syntax.SYNTAX_PROTO2, $2.Syntax.valueOf, $2.Syntax.values)
    ..hasRequiredFields = false
  ;

  Method() : super();

  Method.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);

  Method.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);

  Method clone() =>
      new Method()
        ..mergeFromMessage(this);

  Method copyWith(void Function(Method) updates) => super.copyWith((message) => updates(message as Method));

  $pb.BuilderInfo get info_ => _i;

  static Method create() => new Method();

  static $pb.PbList<Method> createRepeated() => new $pb.PbList<Method>();

  static Method getDefault() =>
      _defaultInstance ??= create()
        ..freeze();
  static Method _defaultInstance;

  static void $checkItem(Method v) {
    if (v is! Method) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get name => $_getS(0, '');

  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);

  void clearName() => clearField(1);

  String get requestTypeUrl => $_getS(1, '');

  set requestTypeUrl(String v) {
    $_setString(1, v);
  }

  bool hasRequestTypeUrl() => $_has(1);

  void clearRequestTypeUrl() => clearField(2);

  bool get requestStreaming => $_get(2, false);

  set requestStreaming(bool v) {
    $_setBool(2, v);
  }

  bool hasRequestStreaming() => $_has(2);

  void clearRequestStreaming() => clearField(3);

  String get responseTypeUrl => $_getS(3, '');

  set responseTypeUrl(String v) {
    $_setString(3, v);
  }

  bool hasResponseTypeUrl() => $_has(3);

  void clearResponseTypeUrl() => clearField(4);

  bool get responseStreaming => $_get(4, false);

  set responseStreaming(bool v) {
    $_setBool(4, v);
  }

  bool hasResponseStreaming() => $_has(4);

  void clearResponseStreaming() => clearField(5);

  List<$2.Option> get options => $_getList(5);

  $2.Syntax get syntax => $_getN(6);

  set syntax($2.Syntax v) {
    setField(7, v);
  }

  bool hasSyntax() => $_has(6);

  void clearSyntax() => clearField(7);
}

class Mixin extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Mixin', package: const $pb.PackageName('google.protobuf'))
    ..aOS(1, 'name')..aOS(2, 'root')
    ..hasRequiredFields = false
  ;

  Mixin() : super();

  Mixin.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);

  Mixin.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);

  Mixin clone() =>
      new Mixin()
        ..mergeFromMessage(this);

  Mixin copyWith(void Function(Mixin) updates) => super.copyWith((message) => updates(message as Mixin));

  $pb.BuilderInfo get info_ => _i;

  static Mixin create() => new Mixin();

  static $pb.PbList<Mixin> createRepeated() => new $pb.PbList<Mixin>();

  static Mixin getDefault() =>
      _defaultInstance ??= create()
        ..freeze();
  static Mixin _defaultInstance;

  static void $checkItem(Mixin v) {
    if (v is! Mixin) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get name => $_getS(0, '');

  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);

  void clearName() => clearField(1);

  String get root => $_getS(1, '');

  set root(String v) {
    $_setString(1, v);
  }

  bool hasRoot() => $_has(1);

  void clearRoot() => clearField(2);
}

