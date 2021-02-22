import 'package:appstitch_stripe/types/address.dart';
import 'package:appstitch_stripe/types/cardFormPaymentRequest.dart';
import 'package:appstitch_stripe/types/connectOptions.dart';
import 'package:appstitch_stripe/types/createCardOpts.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/token.dart';

part 'createPaymentMethodOpts.g.dart';

@JsonSerializable()
class CreatePaymentMethodOpts extends ConnectOptions {
  CreatePaymentMethodOpts({
    this.billingAddress,
    this.card,
    // this.token,
    // this.metadata,
  });
  Address billingAddress;
  CreateCardOpts card;
  // Token token;
  // Map<String, String> metadata;

  factory CreatePaymentMethodOpts.fromJson(Map<String, dynamic> json) =>
      _$CreatePaymentMethodOptsFromJson(json);
  Map<String, dynamic> toJson() => _$CreatePaymentMethodOptsToJson(this);
}
