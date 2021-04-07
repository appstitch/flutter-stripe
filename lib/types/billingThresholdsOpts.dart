library appstitch_stripe;

import 'package:json_annotation/json_annotation.dart';

part 'billingThresholdsOpts.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class BillingThresholdsOpts {
  BillingThresholdsOpts({
    this.amountGte,
    this.resetBillingCycleAnchor,
  });

  int? amountGte;
  bool? resetBillingCycleAnchor;

  factory BillingThresholdsOpts.fromJson(Map<String, dynamic> json) =>
      _$BillingThresholdsOptsFromJson(json);
  Map<String, dynamic> toJson() => _$BillingThresholdsOptsToJson(this);
}
