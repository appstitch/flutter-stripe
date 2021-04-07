import 'package:json_annotation/json_annotation.dart';

part 'androidPayLineItem.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class AndroidPayLineItem {
  String? currencyCode;
  String? description;
  String? quantity;
  String? totalPrice;
  String? unitPrice;

  AndroidPayLineItem(
      {this.currencyCode,
      this.description,
      this.quantity,
      this.totalPrice,
      this.unitPrice});

  factory AndroidPayLineItem.fromJson(Map<String, dynamic> json) =>
      _$AndroidPayLineItemFromJson(json);
  Map<String, dynamic> toJson() => _$AndroidPayLineItemToJson(this);
}
