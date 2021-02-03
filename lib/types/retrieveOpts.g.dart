// GENERATED CODE - DO NOT MODIFY BY HAND

part of stripe;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RetrieveOpts _$RetrieveOptsFromJson(Map<String, dynamic> json) {
  return RetrieveOpts(
    id: json['id'] as String,
  )
    ..stitch_id = json['stitch_id'] as String
    ..stripe_error = json['type'] as String
    ..stripeAccount = json['stripeAccount'] as String;
}

Map<String, dynamic> _$RetrieveOptsToJson(RetrieveOpts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stitch_id', instance.stitch_id);
  writeNotNull('type', instance.stripe_error);
  writeNotNull('stripeAccount', instance.stripeAccount);
  writeNotNull('id', instance.id);
  return val;
}
