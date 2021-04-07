import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/connectOptions.dart';

part 'price.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class Price extends ConnectOptions {
  Price({
    this.active,
    this.currency,
    this.id,
    this.metadata,
    this.product,
    this.unitAmount,
  });

  bool? active;
  String? currency;
  String? id;
  Map<String, dynamic>? metadata;
  String? product;
  int? unitAmount;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
  Map<String, dynamic> toJson() => _$PriceToJson(this);
}
