// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bankAccount.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BankAccount _$BankAccountFromJson(Map<String, dynamic> json) {
  return BankAccount(
    accountHolderName: json['account_holder_name'] as String,
    accountHolderType: json['account_holder_type'] as String,
    accountNumber: json['account_number'] as String,
    bankName: json['bank_name'] as String,
    countryCode: json['country_code'] as String,
    currency: json['currency'] as String,
    fingerprint: json['fingerprint'] as String,
    last4: json['last4'] as String,
    routingNumber: json['routing_number'] as String,
  )
    ..blueprintId = json['blueprint_id'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String
    ..object = json['object'] as String
    ..amount = json['amount'] as num
    ..clientSecret = json['client_secret'] as String
    ..created = json['created'] as num
    ..flow = json['flow'] as String
    ..sourceId = json['source_id'] as String
    ..livemode = json['livemode'] as bool
    ..metadata = json['metadata'] as Map<String, dynamic>
    ..statementDescriptor = json['statement_descriptor'] as String
    ..status = json['status'] as String
    ..usage = json['usage'] as String
    ..id = json['id'] as String;
}

Map<String, dynamic> _$BankAccountToJson(BankAccount instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blueprint_id', instance.blueprintId);
  writeNotNull('type', instance.stripeError);
  writeNotNull('message', instance.message);
  writeNotNull('param', instance.param);
  writeNotNull('object', instance.object);
  writeNotNull('amount', instance.amount);
  writeNotNull('client_secret', instance.clientSecret);
  writeNotNull('created', instance.created);
  writeNotNull('flow', instance.flow);
  writeNotNull('source_id', instance.sourceId);
  writeNotNull('livemode', instance.livemode);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('statement_descriptor', instance.statementDescriptor);
  writeNotNull('status', instance.status);
  writeNotNull('usage', instance.usage);
  writeNotNull('id', instance.id);
  writeNotNull('account_holder_name', instance.accountHolderName);
  writeNotNull('account_holder_type', instance.accountHolderType);
  writeNotNull('account_number', instance.accountNumber);
  writeNotNull('bank_name', instance.bankName);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('currency', instance.currency);
  writeNotNull('fingerprint', instance.fingerprint);
  writeNotNull('last4', instance.last4);
  writeNotNull('routing_number', instance.routingNumber);
  return val;
}
