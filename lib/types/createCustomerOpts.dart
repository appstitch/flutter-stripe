library appstitch_stripe;

import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/connectOptions.dart';
import 'package:appstitch_stripe/types/address.dart';

part 'createCustomerOpts.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class CreateCustomerOpts extends ConnectOptions {
  CreateCustomerOpts({
    this.address,
    this.balance,
    this.coupon,
    this.description,
    this.email,
    this.invoicePrefix,
    this.metadata,
    this.name,
    this.nextInvoiceSequence,
    this.paymentMethod,
    this.phone,
    this.preferredLocals,
    this.promotionCode,
    this.source,
  });

  Address? address;
  int? balance;
  String? coupon;
  String? description;
  String? email;
  String? invoicePrefix;
  Map<String, dynamic>? metadata;
  String? name;
  int? nextInvoiceSequence;
  String? paymentMethod;
  String? phone;
  List<String>? preferredLocals;
  String? promotionCode;
  String? source;

  factory CreateCustomerOpts.fromJson(Map<String, dynamic> json) =>
      _$CreateCustomerOptsFromJson(json);
  Map<String, dynamic> toJson() => _$CreateCustomerOptsToJson(this);
}
