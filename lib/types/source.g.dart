// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Source _$SourceFromJson(Map<String, dynamic> json) {
  return Source(
    id: json['id'] as String,
    amount: json['amount'] as num,
    clientSecret: json['client_secret'] as String,
    created: json['created'] as num,
    currency: json['currency'] as String,
    flow: json['flow'] as String,
    sourceId: json['source_id'] as String,
    livemode: json['livemode'] as bool,
    metadata: json['metadata'] as Map<String, dynamic>,
    statementDescriptor: json['statement_descriptor'] as String,
    status: json['status'] as String,
    usage: json['usage'] as String,
  )
    ..blueprintId = json['blueprint_id'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String
    ..object = json['object'] as String;
}

Map<String, dynamic> _$SourceToJson(Source instance) {
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
  writeNotNull('currency', instance.currency);
  writeNotNull('flow', instance.flow);
  writeNotNull('source_id', instance.sourceId);
  writeNotNull('livemode', instance.livemode);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('statement_descriptor', instance.statementDescriptor);
  writeNotNull('status', instance.status);
  writeNotNull('usage', instance.usage);
  writeNotNull('id', instance.id);
  return val;
}
