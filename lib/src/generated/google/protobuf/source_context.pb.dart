///
//  Generated code. Do not modify.
//  source: google/protobuf/source_context.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import

// ignore: UNUSED_SHOWN_NAME
import 'dart:core' show int, bool, double, String, List, Map, override;

import 'package:protobuf/protobuf.dart' as $pb;

//  Generated code. Do not modify.
//  source: google/protobuf/source_context.proto
///
// ignore_for_file: non_constant_identifier_names,library_prefixes,unused_import
// ignore: UNUSED_SHOWN_NAME

class SourceContext extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i =
      new $pb.BuilderInfo('SourceContext', package: const $pb.PackageName('google.protobuf'))
        ..aOS(1, 'fileName')
        ..hasRequiredFields = false;

  SourceContext() : super();

  SourceContext.fromBuffer(List<int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY])
      : super.fromBuffer(i, r);

  SourceContext.fromJson(String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) : super.fromJson(i, r);

  SourceContext clone() => new SourceContext()..mergeFromMessage(this);

  SourceContext copyWith(void Function(SourceContext) updates) =>
      super.copyWith((message) => updates(message as SourceContext));

  $pb.BuilderInfo get info_ => _i;

  static SourceContext create() => new SourceContext();

  static $pb.PbList<SourceContext> createRepeated() => new $pb.PbList<SourceContext>();

  static SourceContext getDefault() => _defaultInstance ??= create()..freeze();
  static SourceContext _defaultInstance;

  static void $checkItem(SourceContext v) {
    if (v is! SourceContext) $pb.checkItemFailed(v, _i.qualifiedMessageName);
  }

  String get fileName => $_getS(0, '');

  set fileName(String v) {
    $_setString(0, v);
  }

  bool hasFileName() => $_has(0);

  void clearFileName() => clearField(1);
}
