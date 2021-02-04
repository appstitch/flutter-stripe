import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/base.dart';

part 'source.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class Source extends Base {
  Source({
    this.id,
  });

  String id;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
  Map<String, dynamic> toJson() => _$SourceToJson(this);
}
