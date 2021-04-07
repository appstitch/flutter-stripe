import 'package:appstitch_stripe/types.dart';
import 'package:json_annotation/json_annotation.dart';
part 'token.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class Token {
  CreateCardOpts? card;
  double? created;
  bool? livemode;
  String? tokenId;

  Token({this.card, this.created, this.livemode, this.tokenId});

  factory Token.fromJson(Map<dynamic, dynamic> json) {
    return Token(
        card:
            json['card'] != null ? CreateCardOpts.fromJson(json['card']) : null,
        created: json['created'],
        tokenId: json['tokenId'],
        livemode: json["livemode"]);
  }
  Map<String, dynamic> toJson() => _$TokenToJson(this);
}
