// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'capturePaymentIntentOpts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CapturePaymentIntentOpts _$CapturePaymentIntentOptsFromJson(
    Map<String, dynamic> json) {
  return CapturePaymentIntentOpts(
    amountToCapture: (json['amountToCapture'] as num)?.toDouble(),
    applicationFeeAmount: (json['applicationFeeAmount'] as num)?.toDouble(),
    id: json['id'] as String,
    statementDescriptor: json['statementDescriptor'] as String,
    statementDescriptorSuffix: json['statementDescriptorSuffix'] as String,
    stripeAccount: json['stripeAccount'] as String,
    transferData: json['transferData'] == null
        ? null
        : TransferData.fromJson(json['transferData'] as Map<String, dynamic>),
  )
    ..stitch_id = json['stitch_id'] as String
    ..stripe_error = json['type'] as String;
}

Map<String, dynamic> _$CapturePaymentIntentOptsToJson(
        CapturePaymentIntentOpts instance) =>
    <String, dynamic>{
      'stitch_id': instance.stitch_id,
      'type': instance.stripe_error,
      'amountToCapture': instance.amountToCapture,
      'applicationFeeAmount': instance.applicationFeeAmount,
      'id': instance.id,
      'statementDescriptor': instance.statementDescriptor,
      'statementDescriptorSuffix': instance.statementDescriptorSuffix,
      'stripeAccount': instance.stripeAccount,
      'transferData': instance.transferData?.toJson(),
    };
