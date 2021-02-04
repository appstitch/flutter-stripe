import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/connectOptions.dart';
import 'package:appstitch_stripe/types/transferData.dart';

part 'updatePaymentIntentOpts.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class UpdatePaymentIntentOpts extends ConnectOptions {
  UpdatePaymentIntentOpts({
    this.amount,
    this.applicationFeeAmount,
    this.currency,
    this.customer,
    this.description,
    this.errorOnRequiresAction,
    this.metadata,
    this.offSession,
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
  String currency;
  String customer;
  String description;
  bool errorOnRequiresAction;
  Map<String, dynamic> metadata;
  bool offSession;
  String paymentMethod;
  List<String> paymentMethodTypes;
  String receiptEmail;

  String statementDescriptor;
  String statementDescriptorSuffix;
  TransferData transferData;
  String transferGroup;

  factory UpdatePaymentIntentOpts.fromJson(Map<String, dynamic> json) =>
      _$UpdatePaymentIntentOptsFromJson(json);
  Map<String, dynamic> toJson() => _$UpdatePaymentIntentOptsToJson(this);
}
