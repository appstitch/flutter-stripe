// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Card _$CardFromJson(Map<String, dynamic> json) {
  return Card(
    addressCity: json['address_city'] as String,
    addressCountry: json['address_country'] as String,
    addressLine1: json['address_line1'] as String,
    addressLine1Check: json['address_line1_check'] as String,
    addressLine2: json['address_line2'] as String,
    addressState: json['address_state'] as String,
    addressZip: json['address_zip'] as String,
    addressZipCheck: json['address_zip_check'] as String,
    brand: json['brand'] as String,
    country: json['country'] as String,
    customer: json['customer'] as String,
    cvcCheck: json['cvc_check'] as String,
    dynamicLast4: json['dynamic_last4'] as String,
    expMonth: json['exp_month'] as int,
    expYear: json['exp_year'] as int,
    fingerprint: json['fingerprint'] as String,
    funding: json['funding'] as String,
    id: json['id'] as String,
    last4: json['last4'] as String,
    metadata: json['metadata'] as Map<String, dynamic>,
    name: json['name'] as String,
    object: json['object'] as String,
    source: json['source'] as String,
    tokenizationMethod: json['tokenization_method'] as String,
  )
    ..stitchKey = json['stitch_key'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String;
}

Map<String, dynamic> _$CardToJson(Card instance) {
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
  writeNotNull('address_city', instance.addressCity);
  writeNotNull('address_country', instance.addressCountry);
  writeNotNull('address_line1', instance.addressLine1);
  writeNotNull('address_line1_check', instance.addressLine1Check);
  writeNotNull('address_line2', instance.addressLine2);
  writeNotNull('address_state', instance.addressState);
  writeNotNull('address_zip', instance.addressZip);
  writeNotNull('address_zip_check', instance.addressZipCheck);
  writeNotNull('brand', instance.brand);
  writeNotNull('country', instance.country);
  writeNotNull('customer', instance.customer);
  writeNotNull('cvc_check', instance.cvcCheck);
  writeNotNull('dynamic_last4', instance.dynamicLast4);
  writeNotNull('exp_month', instance.expMonth);
  writeNotNull('exp_year', instance.expYear);
  writeNotNull('fingerprint', instance.fingerprint);
  writeNotNull('funding', instance.funding);
  writeNotNull('last4', instance.last4);
  writeNotNull('id', instance.id);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('name', instance.name);
  writeNotNull('object', instance.object);
  writeNotNull('source', instance.source);
  writeNotNull('tokenization_method', instance.tokenizationMethod);
  return val;
}
