library stripe;

import 'package:json_annotation/json_annotation.dart';
import 'package:stripe/types/connectOptions.dart';

part 'retrieveOpts.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class RetrieveOpts extends ConnectOptions {
  RetrieveOpts({
    this.id,
  });

  String id;

  factory RetrieveOpts.fromJson(Map<String, dynamic> json) =>
      _$RetrieveOptsFromJson(json);
  Map<String, dynamic> toJson() => _$RetrieveOptsToJson(this);
}
