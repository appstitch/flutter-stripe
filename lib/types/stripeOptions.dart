import 'package:flutter/foundation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'stripeOptions.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class StripeOptions {
  String publishableKey;
  String merchantId;
  String androidPayMode;

  StripeOptions(
      {@required this.publishableKey, this.merchantId, this.androidPayMode});

  factory StripeOptions.fromJson(Map<String, dynamic> json) =>
      _$StripeOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$StripeOptionsToJson(this);
}
