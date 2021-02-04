// GENERATED CODE - DO NOT MODIFY BY HAND

part of appstitch_stripe;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionItem _$SubscriptionItemFromJson(Map<String, dynamic> json) {
  return SubscriptionItem(
    plan: json['plan'] as String,
    price: json['price'] as String,
    quantity: json['quantity'] as String,
  )
    ..stitchKey = json['stitchKey'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String;
}

Map<String, dynamic> _$SubscriptionItemToJson(SubscriptionItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stitchKey', instance.stitchKey);
  writeNotNull('type', instance.stripeError);
  writeNotNull('message', instance.message);
  writeNotNull('param', instance.param);
  writeNotNull('plan', instance.plan);
  writeNotNull('price', instance.price);
  writeNotNull('quantity', instance.quantity);
  return val;
}
