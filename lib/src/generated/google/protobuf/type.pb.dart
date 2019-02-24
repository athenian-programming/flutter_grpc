///
//  Generated code. Do not modify.
//  source: google/protobuf/type.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

import 'any.pb.dart' as $1;
import 'source_context.pb.dart' as $0;
import 'type.pbenum.dart';

export 'type.pbenum.dart';

//  Generated code. Do not modify.
//  source: google/protobuf/type.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import
// ignore: UNUSED_SHOWN_NAME

class Type extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Type', package: const $pb.PackageName('google.protobuf'))
    ..aOS(1, 'name')
    ..pp<Field>(2, 'fields', $pb.PbFieldType.PM, Field.$checkItem, Field.create)
    ..pPS(3, 'oneofs')
    ..pp<Option>(4, 'options', $pb.PbFieldType.PM, Option.$checkItem, Option.create)
    ..a<$0.SourceContext>(5, 'sourceContext', $pb.PbFieldType.OM, $0.SourceContext.getDefault, $0.SourceContext.create)
    ..e<Syntax>(6, 'syntax', $pb.PbFieldType.OE, Syntax.SYNTAX_PROTO2, Syntax.valueOf, Syntax.values)
    ..hasRequiredFields = false;

  Type() : super();

  Type.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);

  Type.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);

  Type clone() => new Type()..mergeFromMessage(this);

  Type copyWith(void Function(Type) updates) => super.copyWith((message) => updates(message as Type));

  $pb.BuilderInfo get info_ => _i;

  static Type create() => new Type();

  static $pb.PbList<Type> createRepeated() => new $pb.PbList<Type>();

  static Type getDefault() => _defaultInstance ??= create()..freeze();
  static Type _defaultInstance;

  static void $checkItem(Type v) {
    if (v is! Type) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get name => $_getS(0, '');

  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);

  void clearName() => clearField(1);

  List<Field> get fields => $_getList(1);

  List<String> get oneofs => $_getList(2);

  List<Option> get options => $_getList(3);

  $0.SourceContext get sourceContext => $_getN(4);

  set sourceContext($0.SourceContext v) {
    setField(5, v);
  }

  bool hasSourceContext() => $_has(4);

  void clearSourceContext() => clearField(5);

  Syntax get syntax => $_getN(5);

  set syntax(Syntax v) {
    setField(6, v);
  }

  bool hasSyntax() => $_has(5);

  void clearSyntax() => clearField(6);
}

class Field extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Field', package: const $pb.PackageName('google.protobuf'))
    ..e<Field_Kind>(1, 'kind', $pb.PbFieldType.OE, Field_Kind.TYPE_UNKNOWN, Field_Kind.valueOf, Field_Kind.values)
    ..e<Field_Cardinality>(2, 'cardinality', $pb.PbFieldType.OE, Field_Cardinality.CARDINALITY_UNKNOWN,
        Field_Cardinality.valueOf, Field_Cardinality.values)
    ..a<int>(3, 'number', $pb.PbFieldType.O3)
    ..aOS(4, 'name')
    ..aOS(6, 'typeUrl')
    ..a<int>(7, 'oneofIndex', $pb.PbFieldType.O3)
    ..aOB(8, 'packed')
    ..pp<Option>(9, 'options', $pb.PbFieldType.PM, Option.$checkItem, Option.create)
    ..aOS(10, 'jsonName')
    ..aOS(11, 'defaultValue')
    ..hasRequiredFields = false;

  Field() : super();

  Field.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);

  Field.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);

  Field clone() => new Field()..mergeFromMessage(this);

  Field copyWith(void Function(Field) updates) => super.copyWith((message) => updates(message as Field));

  $pb.BuilderInfo get info_ => _i;

  static Field create() => new Field();

  static $pb.PbList<Field> createRepeated() => new $pb.PbList<Field>();

  static Field getDefault() => _defaultInstance ??= create()..freeze();
  static Field _defaultInstance;

  static void $checkItem(Field v) {
    if (v is! Field) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  Field_Kind get kind => $_getN(0);

  set kind(Field_Kind v) {
    setField(1, v);
  }

  bool hasKind() => $_has(0);

  void clearKind() => clearField(1);

  Field_Cardinality get cardinality => $_getN(1);

  set cardinality(Field_Cardinality v) {
    setField(2, v);
  }

  bool hasCardinality() => $_has(1);

  void clearCardinality() => clearField(2);

  int get number => $_get(2, 0);

  set number(int v) {
    $_setSignedInt32(2, v);
  }

  bool hasNumber() => $_has(2);

  void clearNumber() => clearField(3);

  String get name => $_getS(3, '');

  set name(String v) {
    $_setString(3, v);
  }

  bool hasName() => $_has(3);

  void clearName() => clearField(4);

  String get typeUrl => $_getS(4, '');

  set typeUrl(String v) {
    $_setString(4, v);
  }

  bool hasTypeUrl() => $_has(4);

  void clearTypeUrl() => clearField(6);

  int get oneofIndex => $_get(5, 0);

  set oneofIndex(int v) {
    $_setSignedInt32(5, v);
  }

  bool hasOneofIndex() => $_has(5);

  void clearOneofIndex() => clearField(7);

  bool get packed => $_get(6, false);

  set packed(bool v) {
    $_setBool(6, v);
  }

  bool hasPacked() => $_has(6);

  void clearPacked() => clearField(8);

  List<Option> get options => $_getList(7);

  String get jsonName => $_getS(8, '');

  set jsonName(String v) {
    $_setString(8, v);
  }

  bool hasJsonName() => $_has(8);

  void clearJsonName() => clearField(10);

  String get defaultValue => $_getS(9, '');

  set defaultValue(String v) {
    $_setString(9, v);
  }

  bool hasDefaultValue() => $_has(9);

  void clearDefaultValue() => clearField(11);
}

class Enum extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Enum', package: const $pb.PackageName('google.protobuf'))
    ..aOS(1, 'name')
    ..pp<EnumValue>(2, 'enumvalue', $pb.PbFieldType.PM, EnumValue.$checkItem, EnumValue.create)
    ..pp<Option>(3, 'options', $pb.PbFieldType.PM, Option.$checkItem, Option.create)
    ..a<$0.SourceContext>(4, 'sourceContext', $pb.PbFieldType.OM, $0.SourceContext.getDefault, $0.SourceContext.create)
    ..e<Syntax>(5, 'syntax', $pb.PbFieldType.OE, Syntax.SYNTAX_PROTO2, Syntax.valueOf, Syntax.values)
    ..hasRequiredFields = false;

  Enum() : super();

  Enum.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);

  Enum.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);

  Enum clone() => new Enum()..mergeFromMessage(this);

  Enum copyWith(void Function(Enum) updates) => super.copyWith((message) => updates(message as Enum));

  $pb.BuilderInfo get info_ => _i;

  static Enum create() => new Enum();

  static $pb.PbList<Enum> createRepeated() => new $pb.PbList<Enum>();

  static Enum getDefault() => _defaultInstance ??= create()..freeze();
  static Enum _defaultInstance;

  static void $checkItem(Enum v) {
    if (v is! Enum) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get name => $_getS(0, '');

  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);

  void clearName() => clearField(1);

  List<EnumValue> get enumvalue => $_getList(1);

  List<Option> get options => $_getList(2);

  $0.SourceContext get sourceContext => $_getN(3);

  set sourceContext($0.SourceContext v) {
    setField(4, v);
  }

  bool hasSourceContext() => $_has(3);

  void clearSourceContext() => clearField(4);

  Syntax get syntax => $_getN(4);

  set syntax(Syntax v) {
    setField(5, v);
  }

  bool hasSyntax() => $_has(4);

  void clearSyntax() => clearField(5);
}

class EnumValue extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('EnumValue', package: const $pb.PackageName('google.protobuf'))
    ..aOS(1, 'name')
    ..a<int>(2, 'number', $pb.PbFieldType.O3)
    ..pp<Option>(3, 'options', $pb.PbFieldType.PM, Option.$checkItem, Option.create)
    ..hasRequiredFields = false;

  EnumValue() : super();

  EnumValue.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);

  EnumValue.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);

  EnumValue clone() => new EnumValue()..mergeFromMessage(this);

  EnumValue copyWith(void Function(EnumValue) updates) => super.copyWith((message) => updates(message as EnumValue));

  $pb.BuilderInfo get info_ => _i;

  static EnumValue create() => new EnumValue();

  static $pb.PbList<EnumValue> createRepeated() => new $pb.PbList<EnumValue>();

  static EnumValue getDefault() => _defaultInstance ??= create()..freeze();
  static EnumValue _defaultInstance;

  static void $checkItem(EnumValue v) {
    if (v is! EnumValue) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get name => $_getS(0, '');

  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);

  void clearName() => clearField(1);

  int get number => $_get(1, 0);

  set number(int v) {
    $_setSignedInt32(1, v);
  }

  bool hasNumber() => $_has(1);

  void clearNumber() => clearField(2);

  List<Option> get options => $_getList(2);
}

class Option extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('Option', package: const $pb.PackageName('google.protobuf'))
    ..aOS(1, 'name')
    ..a<$1.Any>(2, 'value', $pb.PbFieldType.OM, $1.Any.getDefault, $1.Any.create)
    ..hasRequiredFields = false;

  Option() : super();

  Option.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);

  Option.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);

  Option clone() => new Option()..mergeFromMessage(this);

  Option copyWith(void Function(Option) updates) => super.copyWith((message) => updates(message as Option));

  $pb.BuilderInfo get info_ => _i;

  static Option create() => new Option();

  static $pb.PbList<Option> createRepeated() => new $pb.PbList<Option>();

  static Option getDefault() => _defaultInstance ??= create()..freeze();
  static Option _defaultInstance;

  static void $checkItem(Option v) {
    if (v is! Option) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get name => $_getS(0, '');

  set name(String v) {
    $_setString(0, v);
  }

  bool hasName() => $_has(0);

  void clearName() => clearField(1);

  $1.Any get value => $_getN(1);

  set value($1.Any v) {
    setField(2, v);
  }

  bool hasValue() => $_has(1);

  void clearValue() => clearField(2);
}
