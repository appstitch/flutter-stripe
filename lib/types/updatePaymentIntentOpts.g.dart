// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updatePaymentIntentOpts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpdatePaymentIntentOpts _$UpdatePaymentIntentOptsFromJson(
    Map<String, dynamic> json) {
  return UpdatePaymentIntentOpts(
    amount: json['amount'] as int?,
    applicationFeeAmount: json['application_fee_amount'] as int?,
    currency: json['currency'] as String?,
    customer: json['customer'] as String?,
    description: json['description'] as String?,
    errorOnRequiresAction: json['error_on_requires_action'] as bool?,
    metadata: json['metadata'] as Map<String, dynamic>?,
    offSession: json['off_session'] as bool?,
    paymentMethod: json['payment_method'] as String?,
    paymentMethodTypes: (json['payment_method_types'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    receiptEmail: json['receipt_email'] as String?,
    statementDescriptor: json['statement_descriptor'] as String?,
    statementDescriptorSuffix: json['statement_descriptor_suffix'] as String?,
    transferData: json['transfer_data'] == null
        ? null
        : TransferData.fromJson(json['transfer_data'] as Map<String, dynamic>),
    transferGroup: json['transfer_group'] as String?,
  )
    ..blueprintId = json['blueprint_id'] as String?
    ..id = json['id'] as String?
    ..stripeError = json['type'] as String?
    ..message = json['message'] as String?
    ..param = json['param'] as String?
    ..object = json['object'] as String?
    ..stripeAccount = json['stripe_account'] as String?;
}

Map<String, dynamic> _$UpdatePaymentIntentOptsToJson(
    UpdatePaymentIntentOpts instance) {
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
  writeNotNull('currency', instance.currency);
  writeNotNull('customer', instance.customer);
  writeNotNull('description', instance.description);
  writeNotNull('error_on_requires_action', instance.errorOnRequiresAction);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('off_session', instance.offSession);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('payment_method_types', instance.paymentMethodTypes);
  writeNotNull('receipt_email', instance.receiptEmail);
  writeNotNull('statement_descriptor', instance.statementDescriptor);
  writeNotNull(
      'statement_descriptor_suffix', instance.statementDescriptorSuffix);
  writeNotNull('transfer_data', instance.transferData?.toJson());
  writeNotNull('transfer_group', instance.transferGroup);
  return val;
}
