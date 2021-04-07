library appstitch_stripe;

import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/connectOptions.dart';

part 'retrieveOpts.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class RetrieveOpts extends ConnectOptions {
  RetrieveOpts({
    this.id,
  });

  String? id;

  factory RetrieveOpts.fromJson(Map<String, dynamic> json) =>
      _$RetrieveOptsFromJson(json);
  Map<String, dynamic> toJson() => _$RetrieveOptsToJson(this);
}
