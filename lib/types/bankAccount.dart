import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/source.dart';
part 'bankAccount.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class BankAccount extends Source {
  BankAccount(
      {this.accountHolderName,
      this.accountHolderType,
      this.accountNumber,
      this.bankName,
      this.countryCode,
      this.currency,
      this.fingerprint,
      this.last4,
      this.routingNumber});

  String accountHolderName;
  String accountHolderType;
  String accountNumber;
  String bankName;
  String countryCode;
  String currency;
  String fingerprint;
  String last4;
  String routingNumber;

  factory BankAccount.fromJson(Map<String, dynamic> json) =>
      _$BankAccountFromJson(json);
  Map<String, dynamic> toJson() => _$BankAccountToJson(this);
}
