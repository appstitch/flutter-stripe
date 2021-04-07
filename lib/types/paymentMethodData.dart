import 'package:appstitch_stripe/types.dart';
import 'package:json_annotation/json_annotation.dart';

part 'paymentMethodData.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class PaymentMethodData {
  CreateCardOpts? card;
  String? type;

  PaymentMethodData({this.card, this.type});

  factory PaymentMethodData.fromJson(Map<dynamic, dynamic> json) {
    return PaymentMethodData(
        card:
            json['card'] != null ? CreateCardOpts.fromJson(json['card']) : null,
        type: json["type"]);
  }
  Map<String, dynamic> toJson() => _$PaymentMethodDataToJson(this);
}
