import 'package:json_annotation/json_annotation.dart';

part 'attachPaymentMethodOpts.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AttachPaymentMethodOpts {
  AttachPaymentMethodOpts({this.customer, this.id});
  String customer;
  String id;

  factory AttachPaymentMethodOpts.fromJson(Map<String, dynamic> json) =>
      _$AttachPaymentMethodOptsFromJson(json);
  Map<String, dynamic> toJson() => _$AttachPaymentMethodOptsToJson(this);
}
