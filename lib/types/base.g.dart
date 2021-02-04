// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Base _$BaseFromJson(Map<String, dynamic> json) {
  return Base(
    stitchKey: json['stitchKey'] as String,
  )
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String;
}

Map<String, dynamic> _$BaseToJson(Base instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stitchKey', instance.stitchKey);
  writeNotNull('type', instance.stripeError);
  writeNotNull('message', instance.message);
  writeNotNull('param', instance.param);
  return val;
}
