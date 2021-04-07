import 'package:json_annotation/json_annotation.dart';
import 'card.dart';

part 'createSourceOpts.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class CreateSourceOpts {
  int? amount;
  String? currency;
  String? returnURL;
  String? type;
  String? name;
  String? statementDescriptor;
  String? country;
  String? email;
  CreditCard? card;

  CreateSourceOpts(
      {this.amount,
      this.currency,
      required this.returnURL,
      required this.type,
      this.name,
      this.statementDescriptor,
      this.country,
      this.email,
      this.card});

  factory CreateSourceOpts.fromJson(Map<String, dynamic> json) =>
      _$CreateSourceOptsFromJson(json);
  Map<String, dynamic> toJson() => _$CreateSourceOptsToJson(this);
}
