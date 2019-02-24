///
//  Generated code. Do not modify.
//  source: google/protobuf/struct.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'struct.pbenum.dart';

export 'struct.pbenum.dart';

//  Generated code. Do not modify.
//  source: google/protobuf/struct.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import
// ignore: UNUSED_SHOWN_NAME

class Struct extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Struct', package: const $pb.PackageName('google.protobuf'))
    ..m<String, Value>(1, 'fields', $pb.PbFieldType.OS, $pb.PbFieldType.OM, Value.create)
    ..hasRequiredFields = false;

  Struct() : super();

  Struct.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);

  Struct.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);

  Struct clone() => new Struct()..mergeFromMessage(this);

  Struct copyWith(void Function(Struct) updates) => super.copyWith((message) => updates(message as Struct));

  $pb.BuilderInfo get info_ => _i;

  static Struct create() => new Struct();

  static $pb.PbList<Struct> createRepeated() => new $pb.PbList<Struct>();

  static Struct getDefault() => _defaultInstance ??= create()..freeze();
  static Struct _defaultInstance;

  static void $checkItem(Struct v) {
    if (v is! Struct) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Map<String, Value> get fields => $_getMap(0);
}

class Value extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Value', package: const $pb.PackageName('google.protobuf'))
    ..e<NullValue>(1, 'nullValue', $pb.PbFieldType.OE, NullValue.NULL_VALUE, NullValue.valueOf, NullValue.values)
    ..a<double>(2, 'numberValue', $pb.PbFieldType.OD)
    ..aOS(3, 'stringValue')
    ..aOB(4, 'boolValue')
    ..a<Struct>(5, 'structValue', $pb.PbFieldType.OM, Struct.getDefault, Struct.create)
    ..a<ListValue>(6, 'listValue', $pb.PbFieldType.OM, ListValue.getDefault, ListValue.create)
    ..hasRequiredFields = false;

  Value() : super();

  Value.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);

  Value.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);

  Value clone() => new Value()..mergeFromMessage(this);

  Value copyWith(void Function(Value) updates) => super.copyWith((message) => updates(message as Value));

  $pb.BuilderInfo get info_ => _i;

  static Value create() => new Value();

  static $pb.PbList<Value> createRepeated() => new $pb.PbList<Value>();

  static Value getDefault() => _defaultInstance ??= create()..freeze();
  static Value _defaultInstance;

  static void $checkItem(Value v) {
    if (v is! Value) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  NullValue get nullValue => $_getN(0);

  set nullValue(NullValue v) {
    setField(1, v);
  }

  bool hasNullValue() => $_has(0);

  void clearNullValue() => clearField(1);

  double get numberValue => $_getN(1);

  set numberValue(double v) {
    $_setDouble(1, v);
  }

  bool hasNumberValue() => $_has(1);

  void clearNumberValue() => clearField(2);

  String get stringValue => $_getS(2, '');

  set stringValue(String v) {
    $_setString(2, v);
  }

  bool hasStringValue() => $_has(2);

  void clearStringValue() => clearField(3);

  bool get boolValue => $_get(3, false);

  set boolValue(bool v) {
    $_setBool(3, v);
  }

  bool hasBoolValue() => $_has(3);

  void clearBoolValue() => clearField(4);

  Struct get structValue => $_getN(4);

  set structValue(Struct v) {
    setField(5, v);
  }

  bool hasStructValue() => $_has(4);

  void clearStructValue() => clearField(5);

  ListValue get listValue => $_getN(5);

  set listValue(ListValue v) {
    setField(6, v);
  }

  bool hasListValue() => $_has(5);

  void clearListValue() => clearField(6);
}

class ListValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('ListValue', package: const $pb.PackageName('google.protobuf'))
    ..pp<Value>(1, 'values', $pb.PbFieldType.PM, Value.$checkItem, Value.create)
    ..hasRequiredFields = false;

  ListValue() : super();

  ListValue.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);

  ListValue.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);

  ListValue clone() => new ListValue()..mergeFromMessage(this);

  ListValue copyWith(void Function(ListValue) updates) => super.copyWith((message) => updates(message as ListValue));

  $pb.BuilderInfo get info_ => _i;

  static ListValue create() => new ListValue();

  static $pb.PbList<ListValue> createRepeated() => new $pb.PbList<ListValue>();

  static ListValue getDefault() => _defaultInstance ??= create()..freeze();
  static ListValue _defaultInstance;

  static void $checkItem(ListValue v) {
    if (v is! ListValue) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<Value> get values => $_getList(0);
}
