import 'package:json_annotation/json_annotation.dart';
import 'bankAccount.dart';
import 'card.dart';
part 'token.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class Token {
  BankAccount bankAccount;
  CreditCard card;
  double created;
  bool livemode;
  String tokenId;

  Token(
      {this.bankAccount, this.card, this.created, this.livemode, this.tokenId});

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
  Map<String, dynamic> toJson() => _$TokenToJson(this);
}
