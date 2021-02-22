// GENERATED CODE - DO NOT MODIFY BY HAND

part of appstitch_stripe;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionItemList _$SubscriptionItemListFromJson(Map<String, dynamic> json) {
  return SubscriptionItemList(
    object: json['object'] as String,
    data: (json['data'] as List)
        ?.map((e) => e == null
            ? null
            : SubscriptionItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$SubscriptionItemListToJson(
    SubscriptionItemList instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('object', instance.object);
  writeNotNull('data', instance.data?.map((e) => e?.toJson())?.toList());
  return val;
}
