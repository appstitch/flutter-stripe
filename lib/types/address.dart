import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/base.dart';

part 'address.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class Address extends Base {
  Address({
    this.city,
    this.country,
    this.line1,
    this.line2,
    this.postalCode,
    this.state,
  });

  String city;
  String country;
  String line1;
  String line2;
  String postalCode;
  String state;

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);
  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
