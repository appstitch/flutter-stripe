import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/base.dart';

part 'source.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class Source extends Base {
  Source(
      {this.id,
      this.amount,
      this.clientSecret,
      this.created,
      this.currency,
      this.flow,
      this.sourceId,
      this.livemode,
      this.metadata,
      // this.owner,
      this.statementDescriptor,
      this.status,
      this.usage});
  String object;
  num amount;
  String clientSecret;
  num created;
  String currency;
  String flow;
  String sourceId;
  bool livemode;
  Map<String, dynamic> metadata;
  // Owner owner;
  String statementDescriptor;
  String status;
  String usage;
  String id;

  factory Source.fromJson(Map<String, dynamic> json) => _$SourceFromJson(json);
  Map<String, dynamic> toJson() => _$SourceToJson(this);
}
