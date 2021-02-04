// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paymentMethod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) {
  return PaymentMethod(
    customer: json['customer'] as String,
    id: json['id'] as String,
  )
    ..stitchKey = json['stitchKey'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String
    ..stripeAccount = json['stripe_account'] as String;
}

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stitchKey', instance.stitchKey);
  writeNotNull('type', instance.stripeError);
  writeNotNull('message', instance.message);
  writeNotNull('param', instance.param);
  writeNotNull('stripe_account', instance.stripeAccount);
  writeNotNull('customer', instance.customer);
  writeNotNull('id', instance.id);
  return val;
}
