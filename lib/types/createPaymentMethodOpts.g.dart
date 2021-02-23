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
    ..blueprintId = json['blueprintId'] as String
    ..id = json['id'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String
    ..object = json['object'] as String
    ..stripeAccount = json['stripeAccount'] as String;
}

Map<String, dynamic> _$CreatePaymentMethodOptsToJson(
        CreatePaymentMethodOpts instance) =>
    <String, dynamic>{
      'blueprintId': instance.blueprintId,
      'id': instance.id,
      'type': instance.stripeError,
      'message': instance.message,
      'param': instance.param,
      'object': instance.object,
      'stripeAccount': instance.stripeAccount,
      'billingAddress': instance.billingAddress,
      'card': instance.card,
    };
