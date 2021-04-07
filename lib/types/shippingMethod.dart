import 'package:json_annotation/json_annotation.dart';

part 'shippingMethod.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class ShippingMethod {
  String? amount;
  String? detail;
  String? id;
  String? label;

  ShippingMethod({this.amount, this.detail, this.id, this.label});

  factory ShippingMethod.fromJson(Map<String, dynamic> json) =>
      _$ShippingMethodFromJson(json);
  Map<String, dynamic> toJson() => _$ShippingMethodToJson(this);
}
