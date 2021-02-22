// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'createSourceOpts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateSourceOpts _$CreateSourceOptsFromJson(Map<String, dynamic> json) {
  return CreateSourceOpts(
    amount: json['amount'] as int,
    currency: json['currency'] as String,
    returnURL: json['return_u_r_l'] as String,
    type: json['type'] as String,
    name: json['name'] as String,
    statementDescriptor: json['statement_descriptor'] as String,
    country: json['country'] as String,
    email: json['email'] as String,
    card: json['card'] == null
        ? null
        : CreditCard.fromJson(json['card'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateSourceOptsToJson(CreateSourceOpts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('currency', instance.currency);
  writeNotNull('return_u_r_l', instance.returnURL);
  writeNotNull('type', instance.type);
  writeNotNull('name', instance.name);
  writeNotNull('statement_descriptor', instance.statementDescriptor);
  writeNotNull('country', instance.country);
  writeNotNull('email', instance.email);
  writeNotNull('card', instance.card?.toJson());
  return val;
}
