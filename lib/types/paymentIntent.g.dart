// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paymentIntent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentIntent _$PaymentIntentFromJson(Map<String, dynamic> json) {
  return PaymentIntent(
    amount: json['amount'] as int,
    amountRefunded: json['amount_refunded'] as int,
    applicationFeeAmount: json['application_fee_amount'] as int,
    chargeName: json['charge_name'] as String,
    confirm: json['confirm'] as bool,
    created: json['created'] as int,
    currency: json['currency'] as String,
    customer: json['customer'] as String,
    description: json['description'] as String,
    id: json['id'] as String,
    invoice: json['invoice'] as String,
    metadata: json['metadata'] as Map<String, dynamic>,
    object: json['object'] as String,
    offSession: json['off_session'] as bool,
    paymentMethod: json['payment_method'] as String,
    paymentMethodTypes: (json['payment_method_types'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    receiptEmail: json['receipt_email'] as String,
    statementDescriptor: json['statement_descriptor'] as String,
    statementDescriptorSuffix: json['statement_descriptor_suffix'] as String,
    status: json['status'] as String,
    testMode: json['test_mode'] as bool,
    transferData: json['transfer_data'] == null
        ? null
        : TransferData.fromJson(json['transfer_data'] as Map<String, dynamic>),
    transferGroup: json['transfer_group'] as String,
  )
    ..stitchKey = json['stitch_key'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String
    ..stripeAccount = json['stripe_account'] as String;
}

Map<String, dynamic> _$PaymentIntentToJson(PaymentIntent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stitch_key', instance.stitchKey);
  writeNotNull('type', instance.stripeError);
  writeNotNull('message', instance.message);
  writeNotNull('param', instance.param);
  writeNotNull('stripe_account', instance.stripeAccount);
  writeNotNull('amount', instance.amount);
  writeNotNull('amount_refunded', instance.amountRefunded);
  writeNotNull('application_fee_amount', instance.applicationFeeAmount);
  writeNotNull('charge_name', instance.chargeName);
  writeNotNull('confirm', instance.confirm);
  writeNotNull('created', instance.created);
  writeNotNull('currency', instance.currency);
  writeNotNull('customer', instance.customer);
  writeNotNull('description', instance.description);
  writeNotNull('id', instance.id);
  writeNotNull('invoice', instance.invoice);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('object', instance.object);
  writeNotNull('off_session', instance.offSession);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('payment_method_types', instance.paymentMethodTypes);
  writeNotNull('receipt_email', instance.receiptEmail);
  writeNotNull('statement_descriptor', instance.statementDescriptor);
  writeNotNull(
      'statement_descriptor_suffix', instance.statementDescriptorSuffix);
  writeNotNull('status', instance.status);
  writeNotNull('test_mode', instance.testMode);
  writeNotNull('transfer_data', instance.transferData?.toJson());
  writeNotNull('transfer_group', instance.transferGroup);
  return val;
}
