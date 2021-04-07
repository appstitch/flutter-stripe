import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/base.dart';

part 'discount.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class Discount extends Base {
  Discount({
    this.customer,
    this.end,
    this.start,
    this.subscription,
  });

  String? customer;
  int? end;
  int? start;
  String? subscription;

  factory Discount.fromJson(Map<String, dynamic> json) =>
      _$DiscountFromJson(json);
  Map<String, dynamic> toJson() => _$DiscountToJson(this);
}
