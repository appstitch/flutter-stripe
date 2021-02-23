import 'package:json_annotation/json_annotation.dart';

import 'createCardOpts.dart';

part 'paymentMethodResult.g.dart';

@JsonSerializable()
class PaymentMethodResult {
  PaymentMethodResult({this.id, this.card, this.created});

  String id;
  int created;
  CreateCardOpts card;

  factory PaymentMethodResult.fromJson(Map<dynamic, dynamic> json) {
    return PaymentMethodResult(
      card: json['card'] != null ? CreateCardOpts.fromJson(json['card']) : null,
      created: json['created'].toInt(),
      id: json['id'],
    );
  }
  Map<String, dynamic> toJson() => _$PaymentMethodResultToJson(this);
}
