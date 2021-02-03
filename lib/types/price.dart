import 'package:json_annotation/json_annotation.dart';
import 'package:stripe/types/base.dart';

part 'price.g.dart';

@JsonSerializable(explicitToJson: true)
class Price extends Base {
  Price({
    this.active,
    this.currency,
    this.id,
    this.metadata,
    this.product,
    this.stripeAccount,
    this.unitAmount,
  });

  bool active;
  String currency;
  String id;
  Map<String, dynamic> metadata;
  String product;
  String stripeAccount;
  double unitAmount;

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);
  Map<String, dynamic> toJson() => _$PriceToJson(this);
}
