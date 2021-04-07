// GENERATED CODE - DO NOT MODIFY BY HAND

part of appstitch_stripe;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubscriptionItemOpts _$SubscriptionItemOptsFromJson(Map<String, dynamic> json) {
  return SubscriptionItemOpts(
    billingThresholds: json['billing_thresholds'] as Map<String, dynamic>?,
    metadata: json['metadata'] as Map<String, dynamic>?,
    price: json['price'] as String?,
    priceData: json['price_data'] == null
        ? null
        : Price.fromJson(json['price_data'] as Map<String, dynamic>),
    quantity: json['quantity'] as int?,
    taxRates:
        (json['tax_rates'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$SubscriptionItemOptsToJson(
    SubscriptionItemOpts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('billing_thresholds', instance.billingThresholds);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('price', instance.price);
  writeNotNull('price_data', instance.priceData?.toJson());
  writeNotNull('quantity', instance.quantity);
  writeNotNull('tax_rates', instance.taxRates);
  return val;
}
