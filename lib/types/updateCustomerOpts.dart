library appstitch_stripe;

import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/connectOptions.dart';
import 'package:appstitch_stripe/types/address.dart';

part 'updateCustomerOpts.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class UpdateCustomerOpts extends ConnectOptions {
  UpdateCustomerOpts({
    this.address,
    this.balance,
    this.coupon,
    this.description,
    this.email,
    this.id,
    this.invoicePrefix,
    this.metadata,
    this.name,
    this.nextInvoiceSequence,
    this.defaultSource,
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
  String? id;
  String? invoicePrefix;
  Map<String, dynamic>? metadata;
  String? name;
  int? nextInvoiceSequence;
  String? defaultSource;
  String? phone;
  List<String>? preferredLocals;
  String? promotionCode;
  String? source;

  factory UpdateCustomerOpts.fromJson(Map<String, dynamic> json) =>
      _$UpdateCustomerOptsFromJson(json);
  Map<String, dynamic> toJson() => _$UpdateCustomerOptsToJson(this);
}
