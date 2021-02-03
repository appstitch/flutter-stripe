import 'package:json_annotation/json_annotation.dart';
import 'package:stripe/types/cancellationReason.dart';
import 'package:stripe/types/connectOptions.dart';

part 'cancelPaymentIntentOpts.g.dart';

@JsonSerializable(explicitToJson: true)
class CancelPaymentIntentOpts extends ConnectOptions {
  CancelPaymentIntentOpts({
    this.cancellationReason,
    this.id,
    this.stripeAccount,
  });

  CancellationReason cancellationReason;
  String id;
  String stripeAccount;

  factory CancelPaymentIntentOpts.fromJson(Map<String, dynamic> json) =>
      _$CancelPaymentIntentOptsFromJson(json);
  Map<String, dynamic> toJson() => _$CancelPaymentIntentOptsToJson(this);
}
