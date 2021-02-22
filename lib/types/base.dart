import 'package:json_annotation/json_annotation.dart';

part 'base.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Base {
  Base({
    this.blueprintId,
  });
  String blueprintId;

  String id;
  @JsonKey(name: 'type')
  String stripeError;
  String message;
  String param;
  String object;

  factory Base.fromJson(Map<String, dynamic> json) => _$BaseFromJson(json);
  Map<String, dynamic> toJson() => _$BaseToJson(this);
}
