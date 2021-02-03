// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Card _$CardFromJson(Map<String, dynamic> json) {
  return Card(
    addressCity: json['addressCity'] as String,
    addressCountry: json['addressCountry'] as String,
    addressLine1: json['addressLine1'] as String,
    addressLine1Check: json['addressLine1Check'] as String,
    addressLine2: json['addressLine2'] as String,
    addressState: json['addressState'] as String,
    addressZip: json['addressZip'] as String,
    addressZipCheck: json['addressZipCheck'] as String,
    brand: json['brand'] as String,
    country: json['country'] as String,
    customer: json['customer'] as String,
    cvcCheck: json['cvcCheck'] as String,
    dynamicLast4: json['dynamicLast4'] as String,
    expMonth: (json['expMonth'] as num)?.toDouble(),
    expYear: (json['expYear'] as num)?.toDouble(),
    fingerprint: json['fingerprint'] as String,
    funding: json['funding'] as String,
    id: json['id'] as String,
    last4: json['last4'] as String,
    metadata: json['metadata'] as Map<String, dynamic>,
    name: json['name'] as String,
    object: json['object'] as String,
    source: json['source'] as String,
    stripeAccount: json['stripeAccount'] as String,
    tokenizationMethod: json['tokenizationMethod'] as String,
  )
    ..stitch_id = json['stitch_id'] as String
    ..stripe_error = json['type'] as String;
}

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
      'stitch_id': instance.stitch_id,
      'type': instance.stripe_error,
      'addressCity': instance.addressCity,
      'addressCountry': instance.addressCountry,
      'addressLine1': instance.addressLine1,
      'addressLine1Check': instance.addressLine1Check,
      'addressLine2': instance.addressLine2,
      'addressState': instance.addressState,
      'addressZip': instance.addressZip,
      'addressZipCheck': instance.addressZipCheck,
      'brand': instance.brand,
      'country': instance.country,
      'customer': instance.customer,
      'cvcCheck': instance.cvcCheck,
      'dynamicLast4': instance.dynamicLast4,
      'expMonth': instance.expMonth,
      'expYear': instance.expYear,
      'fingerprint': instance.fingerprint,
      'funding': instance.funding,
      'last4': instance.last4,
      'id': instance.id,
      'metadata': instance.metadata,
      'name': instance.name,
      'object': instance.object,
      'source': instance.source,
      'stripeAccount': instance.stripeAccount,
      'tokenizationMethod': instance.tokenizationMethod,
    };
