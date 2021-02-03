import 'package:json_annotation/json_annotation.dart';
import 'package:stripe/types/base.dart';
import 'package:stripe/types/transferData.dart';

part 'paymentIntent.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentIntent extends Base {
  PaymentIntent({
    this.amount,
    this.amountRefunded,
    this.applicationFeeAmount,
    this.chargeName,
    this.confirm,
    this.created,
    this.currency,
    this.customer,
    this.description,
    this.id,
    this.invoice,
    this.metadata,
    this.object,
    this.offSession,
    this.paymentMethod,
    this.paymentMethodTypes,
    this.receiptEmail,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
    this.status,
    this.stripeAccount,
    this.testMode,
    this.transferData,
    this.transferGroup,
  });

  double amount;
  double amountRefunded;
  double applicationFeeAmount;
  String chargeName;
  bool confirm;
  double created;
  String currency;
  String customer;
  String description;
  String id;
  String invoice;
  Map<String, dynamic> metadata;
  String object;
  bool offSession;
  String paymentMethod;
  List<String> paymentMethodTypes;
  String receiptEmail;
  String statementDescriptor;
  String statementDescriptorSuffix;
  String status;
  String stripeAccount;
  bool testMode;
  TransferData transferData;
  String transferGroup;

  factory PaymentIntent.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentIntentToJson(this);
}
