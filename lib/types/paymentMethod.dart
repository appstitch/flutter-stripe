import 'package:json_annotation/json_annotation.dart';
import 'package:stripe/types/base.dart';

part 'paymentMethod.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentMethod extends Base {
  PaymentMethod({
    this.customer,
    this.id,
    this.stripeAccount,
  });

  String customer;
  String id;
  String stripeAccount;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentMethodToJson(this);
}
