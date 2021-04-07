// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createPaymentMethodOpts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePaymentMethodOpts _$CreatePaymentMethodOptsFromJson(
    Map<String, dynamic> json) {
  return CreatePaymentMethodOpts(
    billingAddress: json['billingAddress'] == null
        ? null
        : Address.fromJson(json['billingAddress'] as Map<String, dynamic>),
    card: json['card'] == null
        ? null
        : CreateCardOpts.fromJson(json['card'] as Map<String, dynamic>),
  )
    ..blueprintId = json['blueprint_id'] as String?
    ..id = json['id'] as String?
    ..stripeError = json['type'] as String?
    ..message = json['message'] as String?
    ..param = json['param'] as String?
    ..object = json['object'] as String?
    ..stripeAccount = json['stripe_account'] as String?;
}

Map<String, dynamic> _$CreatePaymentMethodOptsToJson(
    CreatePaymentMethodOpts instance) {
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
  writeNotNull('stripe_account', instance.stripeAccount);
  val['billingAddress'] = instance.billingAddress;
  val['card'] = instance.card;
  return val;
}
