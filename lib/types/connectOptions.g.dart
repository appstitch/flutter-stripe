// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connectOptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConnectOptions _$ConnectOptionsFromJson(Map<String, dynamic> json) {
  return ConnectOptions(
    stripeAccount: json['stripe_account'] as String,
  )
    ..stitchKey = json['stitch_key'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String;
}

Map<String, dynamic> _$ConnectOptionsToJson(ConnectOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stitch_key', instance.stitchKey);
  writeNotNull('type', instance.stripeError);
  writeNotNull('message', instance.message);
  writeNotNull('param', instance.param);
  writeNotNull('stripe_account', instance.stripeAccount);
  return val;
}
