// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paymentMethodResult.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethodResult _$PaymentMethodResultFromJson(Map<String, dynamic> json) {
  return PaymentMethodResult(
    id: json['id'] as String?,
    card: json['card'] == null
        ? null
        : CreateCardOpts.fromJson(json['card'] as Map<String, dynamic>),
    created: json['created'] as int?,
  );
}

Map<String, dynamic> _$PaymentMethodResultToJson(
        PaymentMethodResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created,
      'card': instance.card,
    };
