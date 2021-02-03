import 'package:json_annotation/json_annotation.dart';
import 'package:stripe/types/base.dart';
import 'package:stripe/types/connectOptions.dart';

part 'confirmPaymentIntentOpts.g.dart';

@JsonSerializable(explicitToJson: true)
class ConfirmPaymentIntentOpts extends ConnectOptions {
  ConfirmPaymentIntentOpts({
    this.errorOnRequiresAction,
    this.mandate,
    this.offSession,
    this.onBehalfOf,
    this.paymentMethod,
    this.paymentMethodTypes,
    this.receiptEmail,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
    this.stripeAccount,
  });

  bool errorOnRequiresAction;
  String mandate;
  bool offSession;
  String onBehalfOf;
  String paymentMethod;
  List<String> paymentMethodTypes;
  String receiptEmail;
  String statementDescriptor;
  String statementDescriptorSuffix;
  String stripeAccount;

  factory ConfirmPaymentIntentOpts.fromJson(Map<String, dynamic> json) =>
      _$ConfirmPaymentIntentOptsFromJson(json);
  Map<String, dynamic> toJson() => _$ConfirmPaymentIntentOptsToJson(this);
}
