import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/connectOptions.dart';
import 'package:appstitch_stripe/types/transferData.dart';

part 'paymentIntent.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class PaymentIntent extends ConnectOptions {
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
    this.testMode,
    this.transferData,
    this.transferGroup,
  });

  String clientSecret;

  int amount;
  int amountRefunded;
  int applicationFeeAmount;
  String chargeName;
  bool confirm;
  int created;
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
  bool testMode;
  TransferData transferData;
  String transferGroup;

  factory PaymentIntent.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentIntentToJson(this);
}
