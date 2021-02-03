// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirmPaymentIntentOpts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmPaymentIntentOpts _$ConfirmPaymentIntentOptsFromJson(
    Map<String, dynamic> json) {
  return ConfirmPaymentIntentOpts(
    errorOnRequiresAction: json['errorOnRequiresAction'] as bool,
    mandate: json['mandate'] as String,
    offSession: json['offSession'] as bool,
    onBehalfOf: json['onBehalfOf'] as String,
    paymentMethod: json['paymentMethod'] as String,
    paymentMethodTypes:
        (json['paymentMethodTypes'] as List)?.map((e) => e as String)?.toList(),
    receiptEmail: json['receiptEmail'] as String,
    statementDescriptor: json['statementDescriptor'] as String,
    statementDescriptorSuffix: json['statementDescriptorSuffix'] as String,
    stripeAccount: json['stripeAccount'] as String,
  )
    ..stitch_id = json['stitch_id'] as String
    ..stripe_error = json['type'] as String;
}

Map<String, dynamic> _$ConfirmPaymentIntentOptsToJson(
        ConfirmPaymentIntentOpts instance) =>
    <String, dynamic>{
      'stitch_id': instance.stitch_id,
      'type': instance.stripe_error,
      'errorOnRequiresAction': instance.errorOnRequiresAction,
      'mandate': instance.mandate,
      'offSession': instance.offSession,
      'onBehalfOf': instance.onBehalfOf,
      'paymentMethod': instance.paymentMethod,
      'paymentMethodTypes': instance.paymentMethodTypes,
      'receiptEmail': instance.receiptEmail,
      'statementDescriptor': instance.statementDescriptor,
      'statementDescriptorSuffix': instance.statementDescriptorSuffix,
      'stripeAccount': instance.stripeAccount,
    };
