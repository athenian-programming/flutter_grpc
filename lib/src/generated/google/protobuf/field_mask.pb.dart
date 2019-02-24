///
//  Generated code. Do not modify.
//  source: google/protobuf/field_mask.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

//  Generated code. Do not modify.
//  source: google/protobuf/field_mask.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import
// ignore: UNUSED_SHOWN_NAME

class FieldMask extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = new $pb.BuilderInfo('FieldMask', package: const $pb.PackageName('google.protobuf'))
    ..pPS(1, 'paths')
    ..hasRequiredFields = false;

  FieldMask() : super();

  FieldMask.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromBuffer(i, r);

  FieldMask.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);

  FieldMask clone() => new FieldMask()..mergeFromMessage(this);

  FieldMask copyWith(void Function(FieldMask) updates) => super.copyWith((message) => updates(message as FieldMask));

  $pb.BuilderInfo get info_ => _i;

  static FieldMask create() => new FieldMask();

  static $pb.PbList<FieldMask> createRepeated() => new $pb.PbList<FieldMask>();

  static FieldMask getDefault() => _defaultInstance ??= create()..freeze();
  static FieldMask _defaultInstance;

  static void $checkItem(FieldMask v) {
    if (v is! FieldMask) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  List<String> get paths => $_getList(0);
}
