import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/cancellationReason.dart';
import 'package:appstitch_stripe/types/connectOptions.dart';

part 'cancelPaymentIntentOpts.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class CancelPaymentIntentOpts extends ConnectOptions {
  CancelPaymentIntentOpts({
    this.cancellationReason,
    this.id,
  });

  CancellationReason? cancellationReason;
  String? id;

  factory CancelPaymentIntentOpts.fromJson(Map<String, dynamic> json) =>
      _$CancelPaymentIntentOptsFromJson(json);
  Map<String, dynamic> toJson() => _$CancelPaymentIntentOptsToJson(this);
}
