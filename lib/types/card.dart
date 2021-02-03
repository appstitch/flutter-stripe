import 'package:json_annotation/json_annotation.dart';
import 'package:stripe/types/source.dart';
part 'card.g.dart';

@JsonSerializable(explicitToJson: true)
class Card extends Source {
  Card({
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
    this.stripeAccount,
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
  double expMonth;
  double expYear;
  String fingerprint;
  String funding;
  String last4;
  String id;
  Map<String, dynamic> metadata;
  String name;
  String object;
  String source;
  String stripeAccount;
  String tokenizationMethod;

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
  Map<String, dynamic> toJson() => _$CardToJson(this);
}