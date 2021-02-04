library appstitch_stripe;

import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/connectOptions.dart';
import 'package:appstitch_stripe/types/transferData.dart';
import 'package:appstitch_stripe/types/method.dart';

part 'createPaymentIntentOpts.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
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
    this.transferData,
    this.transferGroup,
  });

  int amount;
  int applicationFeeAmount;
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
  TransferData transferData;
  String transferGroup;

  factory CreatePaymentIntentOpts.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentIntentOptsFromJson(json);
  Map<String, dynamic> toJson() => _$CreatePaymentIntentOptsToJson(this);
}
