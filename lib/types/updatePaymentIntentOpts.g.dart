// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updatePaymentIntentOpts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePaymentIntentOpts _$UpdatePaymentIntentOptsFromJson(
    Map<String, dynamic> json) {
  return UpdatePaymentIntentOpts(
    amount: (json['amount'] as num)?.toDouble(),
    applicationFeeAmount: (json['applicationFeeAmount'] as num)?.toDouble(),
    currency: json['currency'] as String,
    customer: json['customer'] as String,
    description: json['description'] as String,
    errorOnRequiresAction: json['errorOnRequiresAction'] as bool,
    metadata: json['metadata'] as Map<String, dynamic>,
    offSession: json['offSession'] as bool,
    paymentMethod: json['paymentMethod'] as String,
    paymentMethodTypes:
        (json['paymentMethodTypes'] as List)?.map((e) => e as String)?.toList(),
    receiptEmail: json['receiptEmail'] as String,
    statementDescriptor: json['statementDescriptor'] as String,
    statementDescriptorSuffix: json['statementDescriptorSuffix'] as String,
    stripeAccount: json['stripeAccount'] as String,
    transferData: json['transferData'] == null
        ? null
        : TransferData.fromJson(json['transferData'] as Map<String, dynamic>),
    transferGroup: json['transferGroup'] as String,
  )
    ..stitch_id = json['stitch_id'] as String
    ..stripe_error = json['type'] as String;
}

Map<String, dynamic> _$UpdatePaymentIntentOptsToJson(
        UpdatePaymentIntentOpts instance) =>
    <String, dynamic>{
      'stitch_id': instance.stitch_id,
      'type': instance.stripe_error,
      'amount': instance.amount,
      'applicationFeeAmount': instance.applicationFeeAmount,
      'currency': instance.currency,
      'customer': instance.customer,
      'description': instance.description,
      'errorOnRequiresAction': instance.errorOnRequiresAction,
      'metadata': instance.metadata,
      'offSession': instance.offSession,
      'paymentMethod': instance.paymentMethod,
      'paymentMethodTypes': instance.paymentMethodTypes,
      'receiptEmail': instance.receiptEmail,
      'statementDescriptor': instance.statementDescriptor,
      'statementDescriptorSuffix': instance.statementDescriptorSuffix,
      'stripeAccount': instance.stripeAccount,
      'transferData': instance.transferData?.toJson(),
      'transferGroup': instance.transferGroup,
    };
