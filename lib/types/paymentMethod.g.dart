// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paymentMethod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) {
  return PaymentMethod(
    customer: json['customer'] as String?,
    id: json['id'] as String?,
    created: json['created'] as int?,
    metadata: json['metadata'] as Map<String, dynamic>?,
  )
    ..blueprintId = json['blueprint_id'] as String?
    ..stripeError = json['type'] as String?
    ..message = json['message'] as String?
    ..param = json['param'] as String?
    ..object = json['object'] as String?
    ..stripeAccount = json['stripe_account'] as String?
    ..billingDetails = json['billing_details'] == null
        ? null
        : Address.fromJson(json['billing_details'] as Map<String, dynamic>);
}

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) {
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
  writeNotNull('customer', instance.customer);
  writeNotNull('id', instance.id);
  writeNotNull('billing_details', instance.billingDetails?.toJson());
  writeNotNull('created', instance.created);
  writeNotNull('metadata', instance.metadata);
  return val;
}
