import 'package:json_annotation/json_annotation.dart';
import 'package:stripe/types/discount.dart';
import 'package:stripe/types/address.dart';
import 'package:stripe/types/source.dart';
import 'package:stripe/types/base.dart';

part 'customer.g.dart';

@JsonSerializable(explicitToJson: true)
class Customer extends Base {
  Customer({
    this.address,
    this.balance,
    this.created,
    this.currency,
    this.defaultSource,
    this.delinquent,
    this.description,
    this.discount,
    this.email,
    this.invoicePrefix,
    this.livemode,
    this.metadata,
    this.name,
    this.nextInvoiceSequence,
    this.phone,
    this.preferredLocales,
    this.sources,
    this.stripeAccount,
  });

  Address address;
  double balance;
  double created;
  String currency;
  String defaultSource;
  bool delinquent;
  String description;
  Discount discount;
  String email;
  String invoicePrefix;
  bool livemode;
  Map<String, dynamic> metadata;
  String name;
  double nextInvoiceSequence;
  String phone;
  List<String> preferredLocales;
  List<Source> sources;
  String stripeAccount;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
