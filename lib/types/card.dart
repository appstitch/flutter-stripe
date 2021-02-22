import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/source.dart';
part 'card.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class CreditCard extends Source {
  CreditCard({
    this.addressCity,
    this.addressCountry,
    this.addressLine1,
    this.addressLine1Check,
    this.addressLine2,
    this.addressState,
    this.addressZip,
    this.addressZipCheck,
    this.brand,
    this.country,
    this.customer,
    this.cvcCheck,
    this.dynamicLast4,
    this.expMonth,
    this.expYear,
    this.fingerprint,
    this.funding,
    this.id,
    this.last4,
    this.metadata,
    this.name,
    this.object,
    this.source,
    this.tokenizationMethod,
  });

  String addressCity;
  String addressCountry;
  String addressLine1;
  String addressLine1Check;
  String addressLine2;
  String addressState;
  String addressZip;
  String addressZipCheck;
  String brand;
  String country;
  String customer;
  String cvcCheck;
  String dynamicLast4;
  int expMonth;
  int expYear;
  String fingerprint;
  String funding;
  String last4;
  String id;
  Map<String, dynamic> metadata;
  String name;
  String object;
  String source;
  String tokenizationMethod;

  factory CreditCard.fromJson(Map<String, dynamic> json) =>
      _$CreditCardFromJson(json);
  Map<String, dynamic> toJson() => _$CreditCardToJson(this);
}
