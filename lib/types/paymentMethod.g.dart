// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paymentMethod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethod _$PaymentMethodFromJson(Map<String, dynamic> json) {
  return PaymentMethod(
    customer: json['customer'] as String,
    id: json['id'] as String,
    stripeAccount: json['stripeAccount'] as String,
  )
    ..stitch_id = json['stitch_id'] as String
    ..stripe_error = json['type'] as String;
}

Map<String, dynamic> _$PaymentMethodToJson(PaymentMethod instance) =>
    <String, dynamic>{
      'stitch_id': instance.stitch_id,
      'type': instance.stripe_error,
      'customer': instance.customer,
      'id': instance.id,
      'stripeAccount': instance.stripeAccount,
    };
