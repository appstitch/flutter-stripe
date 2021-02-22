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
    unitAmount: json['unit_amount'] as int,
  )
    ..blueprintId = json['blueprint_id'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String
    ..object = json['object'] as String
    ..stripeAccount = json['stripe_account'] as String;
}

Map<String, dynamic> _$PriceToJson(Price instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blueprint_id', instance.blueprintId);
  writeNotNull('type', instance.stripeError);
  writeNotNull('message', instance.message);
  writeNotNull('param', instance.param);
  writeNotNull('object', instance.object);
  writeNotNull('stripe_account', instance.stripeAccount);
  writeNotNull('active', instance.active);
  writeNotNull('currency', instance.currency);
  writeNotNull('id', instance.id);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('product', instance.product);
  writeNotNull('unit_amount', instance.unitAmount);
  return val;
}
