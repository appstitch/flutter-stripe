// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Base _$BaseFromJson(Map<String, dynamic> json) {
  return Base(
    stitch_id: json['stitch_id'] as String,
  )..stripe_error = json['type'] as String;
}

Map<String, dynamic> _$BaseToJson(Base instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stitch_id', instance.stitch_id);
  writeNotNull('type', instance.stripe_error);
  return val;
}
