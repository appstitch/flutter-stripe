library appstitch_stripe;

import 'package:appstitch_stripe/types/price.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/base.dart';

part 'subscriptionItem.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class SubscriptionItem extends Base {
  SubscriptionItem({
    // this.plan,
    this.price,
    this.quantity,
  });

  // Plan plan;
  Price? price;
  int? quantity;

  factory SubscriptionItem.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionItemFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriptionItemToJson(this);
}
