import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/discount.dart';
import 'package:appstitch_stripe/types/address.dart';
import 'package:appstitch_stripe/types/source.dart';
import 'package:appstitch_stripe/types/connectOptions.dart';

part 'customer.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class Customer extends ConnectOptions {
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
  });

  Address address;
  int balance;
  int created;
  String currency;
  String defaultSource;
  bool delinquent;
  String description;
  Discount discount;
  String email;
  String invoicePrefix;
  Map<String, dynamic> invoiceSettings;
  bool livemode;
  Map<String, dynamic> metadata;
  String name;
  int nextInvoiceSequence;
  String phone;
  List<String> preferredLocales;
  List<Source> sources;

  factory Customer.fromJson(Map<String, dynamic> json) =>
      _$CustomerFromJson(json);
  Map<String, dynamic> toJson() => _$CustomerToJson(this);
}
