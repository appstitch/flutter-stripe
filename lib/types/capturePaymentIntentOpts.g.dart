// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capturePaymentIntentOpts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CapturePaymentIntentOpts _$CapturePaymentIntentOptsFromJson(
    Map<String, dynamic> json) {
  return CapturePaymentIntentOpts(
    amountToCapture: json['amount_to_capture'] as int,
    applicationFeeAmount: json['application_fee_amount'] as int,
    id: json['id'] as String,
    statementDescriptor: json['statement_descriptor'] as String,
    statementDescriptorSuffix: json['statement_descriptor_suffix'] as String,
    transferData: json['transfer_data'] == null
        ? null
        : TransferData.fromJson(json['transfer_data'] as Map<String, dynamic>),
  )
    ..stitchKey = json['stitch_key'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String
    ..stripeAccount = json['stripe_account'] as String;
}

Map<String, dynamic> _$CapturePaymentIntentOptsToJson(
    CapturePaymentIntentOpts instance) {
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
  writeNotNull('amount_to_capture', instance.amountToCapture);
  writeNotNull('application_fee_amount', instance.applicationFeeAmount);
  writeNotNull('id', instance.id);
  writeNotNull('statement_descriptor', instance.statementDescriptor);
  writeNotNull(
      'statement_descriptor_suffix', instance.statementDescriptorSuffix);
  writeNotNull('transfer_data', instance.transferData?.toJson());
  return val;
}
