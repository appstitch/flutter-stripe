// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'connectOptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConnectOptions _$ConnectOptionsFromJson(Map<String, dynamic> json) {
  return ConnectOptions(
    stripeAccount: json['stripeAccount'] as String?,
  )
    ..blueprintId = json['blueprint_id'] as String?
    ..id = json['id'] as String?
    ..stripeError = json['type'] as String?
    ..message = json['message'] as String?
    ..param = json['param'] as String?
    ..object = json['object'] as String?;
}

Map<String, dynamic> _$ConnectOptionsToJson(ConnectOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blueprint_id', instance.blueprintId);
  writeNotNull('id', instance.id);
  writeNotNull('type', instance.stripeError);
  writeNotNull('message', instance.message);
  writeNotNull('param', instance.param);
  writeNotNull('object', instance.object);
  writeNotNull('stripeAccount', instance.stripeAccount);
  return val;
}
