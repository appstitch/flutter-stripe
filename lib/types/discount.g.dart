// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Discount _$DiscountFromJson(Map<String, dynamic> json) {
  return Discount(
    customer: json['customer'] as String,
    end: json['end'] as int,
    start: json['start'] as int,
    subscription: json['subscription'] as String,
  )
    ..stitchKey = json['stitch_key'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String;
}

Map<String, dynamic> _$DiscountToJson(Discount instance) {
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
  writeNotNull('customer', instance.customer);
  writeNotNull('end', instance.end);
  writeNotNull('start', instance.start);
  writeNotNull('subscription', instance.subscription);
  return val;
}
