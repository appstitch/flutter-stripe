import 'package:json_annotation/json_annotation.dart';

part 'base.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class Base {
  Base({
    this.stitch_id,
  });
  String stitch_id;

  @JsonKey(name: 'type')
  String stripe_error;

  factory Base.fromJson(Map<String, dynamic> json) => _$BaseFromJson(json);
  Map<String, dynamic> toJson() => _$BaseToJson(this);
}
