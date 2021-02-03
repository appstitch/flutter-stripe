import 'package:json_annotation/json_annotation.dart';
import 'package:stripe/types/connectOptions.dart';
import 'package:stripe/types/transferData.dart';
import 'package:stripe/types/base.dart';

part 'capturePaymentIntentOpts.g.dart';

@JsonSerializable(explicitToJson: true)
class CapturePaymentIntentOpts extends ConnectOptions {
  CapturePaymentIntentOpts({
    this.amountToCapture,
    this.applicationFeeAmount,
    this.id,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
    this.stripeAccount,
    this.transferData,
  });

  double amountToCapture;
  double applicationFeeAmount;
  String id;
  String statementDescriptor;
  String statementDescriptorSuffix;
  String stripeAccount;
  TransferData transferData;

  factory CapturePaymentIntentOpts.fromJson(Map<String, dynamic> json) =>
      _$CapturePaymentIntentOptsFromJson(json);
  Map<String, dynamic> toJson() => _$CapturePaymentIntentOptsToJson(this);
}
