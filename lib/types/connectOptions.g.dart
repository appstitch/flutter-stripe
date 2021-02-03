// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connectOptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConnectOptions _$ConnectOptionsFromJson(Map<String, dynamic> json) {
  return ConnectOptions(
    stripeAccount: json['stripeAccount'] as String,
  )
    ..stitch_id = json['stitch_id'] as String
    ..stripe_error = json['type'] as String;
}

Map<String, dynamic> _$ConnectOptionsToJson(ConnectOptions instance) {
  final val = <String, dynamic>{
    'stitch_id': instance.stitch_id,
    'type': instance.stripe_error,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stripeAccount', instance.stripeAccount);
  return val;
}
