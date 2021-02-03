// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Discount _$DiscountFromJson(Map<String, dynamic> json) {
  return Discount(
    customer: json['customer'] as String,
    end: (json['end'] as num)?.toDouble(),
    start: (json['start'] as num)?.toDouble(),
    subscription: json['subscription'] as String,
  )
    ..stitch_id = json['stitch_id'] as String
    ..stripe_error = json['type'] as String;
}

Map<String, dynamic> _$DiscountToJson(Discount instance) => <String, dynamic>{
      'stitch_id': instance.stitch_id,
      'type': instance.stripe_error,
      'customer': instance.customer,
      'end': instance.end,
      'start': instance.start,
      'subscription': instance.subscription,
    };
