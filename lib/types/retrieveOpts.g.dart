// GENERATED CODE - DO NOT MODIFY BY HAND

part of appstitch_stripe;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveOpts _$RetrieveOptsFromJson(Map<String, dynamic> json) {
  return RetrieveOpts(
    id: json['id'] as String,
  )
    ..blueprintId = json['blueprint_id'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String
    ..object = json['object'] as String
    ..stripeAccount = json['stripe_account'] as String;
}

Map<String, dynamic> _$RetrieveOptsToJson(RetrieveOpts instance) {
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
  writeNotNull('stripe_account', instance.stripeAccount);
  writeNotNull('id', instance.id);
  return val;
}
