// GENERATED CODE - DO NOT MODIFY BY HAND

part of appstitch_stripe;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePaymentIntentOpts _$CreatePaymentIntentOptsFromJson(
    Map<String, dynamic> json) {
  return CreatePaymentIntentOpts(
    amount: json['amount'] as int?,
    applicationFeeAmount: json['application_fee_amount'] as int?,
    captureMethod:
        _$enumDecodeNullable(_$MethodEnumMap, json['capture_method']),
    confirm: json['confirm'] as bool?,
    confirmationMethod:
        _$enumDecodeNullable(_$MethodEnumMap, json['confirmation_method']),
    currency: json['currency'] as String?,
    customer: json['customer'] as String?,
    description: json['description'] as String?,
    errorOnRequiresAction: json['error_on_requires_action'] as bool?,
    mandate: json['mandate'] as String?,
    metadata: json['metadata'] as Map<String, dynamic>?,
    offSession: json['off_session'] as bool?,
    onBehalfOf: json['on_behalf_of'] as String?,
    paymentMethod: json['payment_method'] as String?,
    paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    paymentMethodData: json['payment_method_data'] == null
        ? null
        : PaymentMethodData.fromJson(
            json['payment_method_data'] as Map<String, dynamic>),
    receiptEmail: json['receipt_email'] as String?,
    statementDescriptor: json['statement_descriptor'] as String?,
    statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
    transferData: json['transfer_data'] == null
        ? null
        : TransferData.fromJson(json['transfer_data'] as Map<String, dynamic>),
    transferGroup: json['transfer_group'] as String?,
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

Map<String, dynamic> _$CreatePaymentIntentOptsToJson(
    CreatePaymentIntentOpts instance) {
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
  writeNotNull('amount', instance.amount);
  writeNotNull('application_fee_amount', instance.applicationFeeAmount);
  writeNotNull('capture_method', _$MethodEnumMap[instance.captureMethod]);
  writeNotNull('confirm', instance.confirm);
  writeNotNull(
      'confirmation_method', _$MethodEnumMap[instance.confirmationMethod]);
  writeNotNull('currency', instance.currency);
  writeNotNull('customer', instance.customer);
  writeNotNull('description', instance.description);
  writeNotNull('error_on_requires_action', instance.errorOnRequiresAction);
  writeNotNull('mandate', instance.mandate);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('off_session', instance.offSession);
  writeNotNull('on_behalf_of', instance.onBehalfOf);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('payment_method_data', instance.paymentMethodData?.toJson());
  writeNotNull('payment_method_types', instance.paymentMethodTypes);
  writeNotNull('receipt_email', instance.receiptEmail);
  writeNotNull('statement_descriptor', instance.statementDescriptor);
  writeNotNull(
      'statement_descriptor_suffix', instance.statementDescriptorSuffix);
  writeNotNull('transfer_data', instance.transferData?.toJson());
  writeNotNull('transfer_group', instance.transferGroup);
  writeNotNull('card', instance.card?.toJson());
  return val;
}

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$MethodEnumMap = {
  Method.automatic: 'automatic',
  Method.manual: 'manual',
};
