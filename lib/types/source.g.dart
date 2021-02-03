// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Source _$SourceFromJson(Map<String, dynamic> json) {
  return Source(
    id: json['id'] as String,
  )
    ..stitch_id = json['stitch_id'] as String
    ..stripe_error = json['type'] as String;
}

Map<String, dynamic> _$SourceToJson(Source instance) => <String, dynamic>{
      'stitch_id': instance.stitch_id,
      'type': instance.stripe_error,
      'id': instance.id,
    };
