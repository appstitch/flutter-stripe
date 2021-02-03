// GENERATED CODE - DO NOT MODIFY BY HAND

part of stripe;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePaymentIntentOpts _$CreatePaymentIntentOptsFromJson(
    Map<String, dynamic> json) {
  return CreatePaymentIntentOpts(
    amount: (json['amount'] as num)?.toDouble(),
    applicationFeeAmount: (json['applicationFeeAmount'] as num)?.toDouble(),
    captureMethod: _$enumDecodeNullable(_$MethodEnumMap, json['captureMethod']),
    confirm: json['confirm'] as bool,
    confirmationMethod:
        _$enumDecodeNullable(_$MethodEnumMap, json['confirmationMethod']),
    currency: json['currency'] as String,
    customer: json['customer'] as String,
    description: json['description'] as String,
    errorOnRequiresAction: json['errorOnRequiresAction'] as bool,
    mandate: json['mandate'] as String,
    metadata: json['metadata'] as Map<String, dynamic>,
    offSession: json['offSession'] as bool,
    onBehalfOf: json['onBehalfOf'] as String,
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

Map<String, dynamic> _$CreatePaymentIntentOptsToJson(
    CreatePaymentIntentOpts instance) {
  final val = <String, dynamic>{
    'stitch_id': instance.stitch_id,
    'type': instance.stripe_error,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('applicationFeeAmount', instance.applicationFeeAmount);
  writeNotNull('captureMethod', _$MethodEnumMap[instance.captureMethod]);
  writeNotNull('confirm', instance.confirm);
  writeNotNull(
      'confirmationMethod', _$MethodEnumMap[instance.confirmationMethod]);
  writeNotNull('currency', instance.currency);
  writeNotNull('customer', instance.customer);
  writeNotNull('description', instance.description);
  writeNotNull('errorOnRequiresAction', instance.errorOnRequiresAction);
  writeNotNull('mandate', instance.mandate);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('offSession', instance.offSession);
  writeNotNull('onBehalfOf', instance.onBehalfOf);
  writeNotNull('paymentMethod', instance.paymentMethod);
  writeNotNull('paymentMethodTypes', instance.paymentMethodTypes);
  writeNotNull('receiptEmail', instance.receiptEmail);
  writeNotNull('statementDescriptor', instance.statementDescriptor);
  writeNotNull('statementDescriptorSuffix', instance.statementDescriptorSuffix);
  writeNotNull('stripeAccount', instance.stripeAccount);
  writeNotNull('transferData', instance.transferData?.toJson());
  writeNotNull('transferGroup', instance.transferGroup);
  return val;
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$MethodEnumMap = {
  Method.automatic: 'automatic',
  Method.manual: 'manual',
};
