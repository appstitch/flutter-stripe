import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/connectOptions.dart';

import 'address.dart';

part 'paymentMethod.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class PaymentMethod extends ConnectOptions {
  PaymentMethod({this.customer, this.id, this.created, this.metadata, type});

  String customer;
  String id;
  Address billingDetails;
  int created;
  Map<String, dynamic> metadata;

  factory PaymentMethod.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentMethodToJson(this);
}
