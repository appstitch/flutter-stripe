library appstitch_stripe;

import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/connectOptions.dart';
import 'package:appstitch_stripe/types/paymentBehaviour.dart';
import 'package:appstitch_stripe/types/billingThresholdsOpts.dart';
import 'package:appstitch_stripe/types/interval.dart';
import 'package:appstitch_stripe/types/method.dart';
import 'package:appstitch_stripe/types/subscriptionItemOpts.dart';

part 'createSubscriptionOpts.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class CreateSubscriptionOpts extends ConnectOptions {
  CreateSubscriptionOpts({
    this.active,
    this.addInvoiceItems,
    this.amount,
    this.applicationFeePercent,
    this.backdateStartSate,
    this.billingCycleAnchor,
    this.billingThresholds,
    this.cancelAt,
    this.cancelAtPeriodEnd,
    this.collectionMethod,
    this.coupon,
    this.currency,
    this.customer,
    this.daysUntilDue,
    this.defaultPaymentMethod,
    this.defaultSource,
    this.defaultTaxRates,
    this.interval,
    this.items,
    this.metadata,
    this.offSession,
    this.paymentBehaviour,
    this.plan,
    this.price,
    this.quantity,
  });

  bool active;
  List<Map<String, dynamic>> addInvoiceItems;
  int amount;
  int applicationFeePercent;
  int backdateStartSate;
  int billingCycleAnchor;
  BillingThresholdsOpts billingThresholds;
  int cancelAt;
  bool cancelAtPeriodEnd;
  Method collectionMethod;
  String coupon;
  String currency;
  String customer;
  int daysUntilDue;
  String defaultPaymentMethod;
  String defaultSource;
  String defaultTaxRates;
  Interval interval;
  List<SubscriptionItemOpts> items;
  Map<String, dynamic> metadata;
  bool offSession;
  PaymentBehaviour paymentBehaviour;
  String plan;
  String price;
  String quantity;

  factory CreateSubscriptionOpts.fromJson(Map<String, dynamic> json) =>
      _$CreateSubscriptionOptsFromJson(json);
  Map<String, dynamic> toJson() => _$CreateSubscriptionOptsToJson(this);
}
