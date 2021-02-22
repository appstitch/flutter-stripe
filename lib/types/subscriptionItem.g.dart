// GENERATED CODE - DO NOT MODIFY BY HAND

part of appstitch_stripe;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionItem _$SubscriptionItemFromJson(Map<String, dynamic> json) {
  return SubscriptionItem(
    price: json['price'] == null
        ? null
        : Price.fromJson(json['price'] as Map<String, dynamic>),
    quantity: json['quantity'] as int,
  )
    ..blueprintId = json['blueprint_id'] as String
    ..id = json['id'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String
    ..object = json['object'] as String;
}

Map<String, dynamic> _$SubscriptionItemToJson(SubscriptionItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blueprint_id', instance.blueprintId);
  writeNotNull('id', instance.id);
  writeNotNull('type', instance.stripeError);
  writeNotNull('message', instance.message);
  writeNotNull('param', instance.param);
  writeNotNull('object', instance.object);
  writeNotNull('price', instance.price?.toJson());
  writeNotNull('quantity', instance.quantity);
  return val;
}
