import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/base.dart';

part 'connectOptions.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ConnectOptions extends Base {
  ConnectOptions({
    this.stripeAccount,
  });

  String stripeAccount;

  factory ConnectOptions.fromJson(Map<String, dynamic> json) =>
      _$ConnectOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$ConnectOptionsToJson(this);
}
