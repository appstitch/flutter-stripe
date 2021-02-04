library appstitch_stripe;

import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/price.dart';

part 'subscriptionItemOpts.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class SubscriptionItemOpts {
  SubscriptionItemOpts({
    this.billingThresholds,
    this.metadata,
    this.price,
    this.priceData,
    this.quantity,
    this.taxRates,
  });

  Map<String, dynamic> billingThresholds;
  Map<String, dynamic> metadata;
  String price;
  Price priceData;
  int quantity;
  List<String> taxRates;

  factory SubscriptionItemOpts.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionItemOptsFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriptionItemOptsToJson(this);
}
