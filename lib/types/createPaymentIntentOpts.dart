library stripe;

import 'package:json_annotation/json_annotation.dart';
import 'package:stripe/types/base.dart';
import 'package:stripe/types/connectOptions.dart';
import 'package:stripe/types/transferData.dart';
import 'package:stripe/types/method.dart';

part 'createPaymentIntentOpts.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class CreatePaymentIntentOpts extends ConnectOptions {
  CreatePaymentIntentOpts({
    this.amount,
    this.applicationFeeAmount,
    this.captureMethod,
    this.confirm,
    this.confirmationMethod,
    this.currency,
    this.customer,
    this.description,
    this.errorOnRequiresAction,
    this.mandate,
    this.metadata,
    this.offSession,
    this.onBehalfOf,
    this.paymentMethod,
    this.paymentMethodTypes,
    this.receiptEmail,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
    this.stripeAccount,
    this.transferData,
    this.transferGroup,
  });

  double amount;
  double applicationFeeAmount;
  Method captureMethod;
  bool confirm;
  Method confirmationMethod;
  String currency;
  String customer;
  String description;
  bool errorOnRequiresAction;
  String mandate;
  Map<String, dynamic> metadata;
  bool offSession;
  String onBehalfOf;
  String paymentMethod;
  List<String> paymentMethodTypes;
  String receiptEmail;
  String statementDescriptor;
  String statementDescriptorSuffix;
  String stripeAccount;
  TransferData transferData;
  String transferGroup;

  factory CreatePaymentIntentOpts.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentIntentOptsFromJson(json);
  Map<String, dynamic> toJson() => _$CreatePaymentIntentOptsToJson(this);
}
