import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/connectOptions.dart';

part 'confirmPaymentIntentOpts.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class ConfirmPaymentIntentOpts extends ConnectOptions {
  ConfirmPaymentIntentOpts({
    this.id,
    this.errorOnRequiresAction,
    this.mandate,
    this.offSession,
    this.onBehalfOf,
    this.paymentMethod,
    this.paymentMethodTypes,
    this.receiptEmail,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
  });

  String id;
  bool errorOnRequiresAction;
  String mandate;
  bool offSession;
  String onBehalfOf;
  String paymentMethod;
  List<String> paymentMethodTypes;
  String receiptEmail;
  String statementDescriptor;
  String statementDescriptorSuffix;

  factory ConfirmPaymentIntentOpts.fromJson(Map<String, dynamic> json) =>
      _$ConfirmPaymentIntentOptsFromJson(json);
  Map<String, dynamic> toJson() => _$ConfirmPaymentIntentOptsToJson(this);
}
