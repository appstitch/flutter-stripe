// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'androidPayOpts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AndroidPayOpts _$AndroidPayOptsFromJson(Map<String, dynamic> json) {
  return AndroidPayOpts(
    billingAddressRequired: json['billing_address_required'] as bool,
    currencyCode: json['currency_code'] as String,
    lineItems: (json['line_items'] as List)
        ?.map((e) => e == null
            ? null
            : AndroidPayLineItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    shippingAddressRequired: json['shipping_address_required'] as bool,
    shippingCountries:
        (json['shipping_countries'] as List)?.map((e) => e as String)?.toList(),
    totalPrice: json['total_price'] as String,
  );
}

Map<String, dynamic> _$AndroidPayOptsToJson(AndroidPayOpts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('billing_address_required', instance.billingAddressRequired);
  writeNotNull('currency_code', instance.currencyCode);
  writeNotNull(
      'line_items', instance.lineItems?.map((e) => e?.toJson())?.toList());
  writeNotNull('shipping_address_required', instance.shippingAddressRequired);
  writeNotNull('shipping_countries', instance.shippingCountries);
  writeNotNull('total_price', instance.totalPrice);
  return val;
}
