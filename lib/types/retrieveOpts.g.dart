// GENERATED CODE - DO NOT MODIFY BY HAND

part of appstitch_stripe;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveOpts _$RetrieveOptsFromJson(Map<String, dynamic> json) {
  return RetrieveOpts(
    id: json['id'] as String,
  )
    ..stitchKey = json['stitch_key'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String
    ..stripeAccount = json['stripe_account'] as String;
}

Map<String, dynamic> _$RetrieveOptsToJson(RetrieveOpts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stitch_key', instance.stitchKey);
  writeNotNull('type', instance.stripeError);
  writeNotNull('message', instance.message);
  writeNotNull('param', instance.param);
  writeNotNull('stripe_account', instance.stripeAccount);
  writeNotNull('id', instance.id);
  return val;
}
