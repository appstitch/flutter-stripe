// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirmPaymentIntentOpts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ConfirmPaymentIntentOpts _$ConfirmPaymentIntentOptsFromJson(
    Map<String, dynamic> json) {
  return ConfirmPaymentIntentOpts(
    id: json['id'] as String,
    errorOnRequiresAction: json['error_on_requires_action'] as bool,
    mandate: json['mandate'] as String,
    offSession: json['off_session'] as bool,
    onBehalfOf: json['on_behalf_of'] as String,
    paymentMethod: json['payment_method'] as String,
    paymentMethodTypes: (json['payment_method_types'] as List)
        ?.map((e) => e as String)
        ?.toList(),
    receiptEmail: json['receipt_email'] as String,
    statementDescriptor: json['statement_descriptor'] as String,
    statementDescriptorSuffix: json['statement_descriptor_suffix'] as String,
  )
    ..blueprintId = json['blueprint_id'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String
    ..object = json['object'] as String
    ..stripeAccount = json['stripe_account'] as String;
}

Map<String, dynamic> _$ConfirmPaymentIntentOptsToJson(
    ConfirmPaymentIntentOpts instance) {
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
  writeNotNull('id', instance.id);
  writeNotNull('error_on_requires_action', instance.errorOnRequiresAction);
  writeNotNull('mandate', instance.mandate);
  writeNotNull('off_session', instance.offSession);
  writeNotNull('on_behalf_of', instance.onBehalfOf);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('payment_method_types', instance.paymentMethodTypes);
  writeNotNull('receipt_email', instance.receiptEmail);
  writeNotNull('statement_descriptor', instance.statementDescriptor);
  writeNotNull(
      'statement_descriptor_suffix', instance.statementDescriptorSuffix);
  return val;
}
