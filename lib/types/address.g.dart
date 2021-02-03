// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Address _$AddressFromJson(Map<String, dynamic> json) {
  return Address(
    city: json['city'] as String,
    country: json['country'] as String,
    line1: json['line1'] as String,
    line2: json['line2'] as String,
    postalCode: json['postalCode'] as String,
    state: json['state'] as String,
  )
    ..stitch_id = json['stitch_id'] as String
    ..stripe_error = json['type'] as String;
}

Map<String, dynamic> _$AddressToJson(Address instance) => <String, dynamic>{
      'stitch_id': instance.stitch_id,
      'type': instance.stripe_error,
      'city': instance.city,
      'country': instance.country,
      'line1': instance.line1,
      'line2': instance.line2,
      'postalCode': instance.postalCode,
      'state': instance.state,
    };
