// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'price.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Price _$PriceFromJson(Map<String, dynamic> json) {
  return Price(
    active: json['active'] as bool,
    currency: json['currency'] as String,
    id: json['id'] as String,
    metadata: json['metadata'] as Map<String, dynamic>,
    product: json['product'] as String,
    stripeAccount: json['stripeAccount'] as String,
    unitAmount: (json['unitAmount'] as num)?.toDouble(),
  )
    ..stitch_id = json['stitch_id'] as String
    ..stripe_error = json['type'] as String;
}

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
      'stitch_id': instance.stitch_id,
      'type': instance.stripe_error,
      'active': instance.active,
      'currency': instance.currency,
      'id': instance.id,
      'metadata': instance.metadata,
      'product': instance.product,
      'stripeAccount': instance.stripeAccount,
      'unitAmount': instance.unitAmount,
    };
