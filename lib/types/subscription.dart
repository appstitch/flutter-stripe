library appstitch_stripe;

import 'package:appstitch_stripe/types.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/connectOptions.dart';

import 'package:appstitch_stripe/types/transferData.dart';
import 'package:appstitch_stripe/types/subscriptionItemList.dart';

import 'subscriptionItemList.dart';

part 'subscription.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class Subscription extends ConnectOptions {
  Subscription({
    this.cancelAtPeriodEnd,
    this.currentPeriodEnd,
    this.currentPeriodStart,
    this.customer,
    this.daysUntilDue,
    this.defaultPaymentMethod,
    this.defaultSource,
    this.description,
    this.id,
    this.invoice,
    this.items,
    this.metadata,
    this.object,
    // this.plan,
    // this.price,
    this.subscriptionName,
    this.transferData,
  });

  bool cancelAtPeriodEnd;
  int currentPeriodEnd;
  int currentPeriodStart;
  String customer;
  int daysUntilDue;
  String defaultPaymentMethod;
  String defaultSource;
  String description;
  String id;
  String invoice;
  SubscriptionItemList items;

  Map<String, dynamic> metadata;
  String object;
  // Plan plan;
  // String price;
  String subscriptionName;
  TransferData transferData;

  factory Subscription.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionFromJson(json);
  Map<String, dynamic> toJson() => _$SubscriptionToJson(this);
}
