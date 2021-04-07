import 'package:json_annotation/json_annotation.dart';

part 'applePayLineItem.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class ApplePayLineItem {
  String? label;
  String? amount;
  String? type;
  ApplePayLineItem({this.label, this.amount, this.type});

  factory ApplePayLineItem.fromJson(Map<String, dynamic> json) =>
      _$ApplePayLineItemFromJson(json);
  Map<String, dynamic> toJson() => _$ApplePayLineItemToJson(this);
}
