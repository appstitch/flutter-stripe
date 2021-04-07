library appstitch_stripe;

import 'package:appstitch_stripe/types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'subscriptionItemList.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SubscriptionItemList {
  String? object;

  List<SubscriptionItem>? data;

  SubscriptionItemList({this.object, this.data});

  factory SubscriptionItemList.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionItemListFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriptionItemListToJson(this);
}
