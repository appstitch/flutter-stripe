import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/connectOptions.dart';
import 'package:appstitch_stripe/types/transferData.dart';

part 'capturePaymentIntentOpts.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class CapturePaymentIntentOpts extends ConnectOptions {
  CapturePaymentIntentOpts({
    this.amountToCapture,
    this.applicationFeeAmount,
    this.id,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
    this.transferData,
  });

  int amountToCapture;
  int applicationFeeAmount;
  String id;
  String statementDescriptor;
  String statementDescriptorSuffix;
  TransferData transferData;

  factory CapturePaymentIntentOpts.fromJson(Map<String, dynamic> json) =>
      _$CapturePaymentIntentOptsFromJson(json);
  Map<String, dynamic> toJson() => _$CapturePaymentIntentOptsToJson(this);
}
