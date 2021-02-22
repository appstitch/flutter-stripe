// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applePayOpts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplePayOpts _$ApplePayOptsFromJson(Map<String, dynamic> json) {
  return ApplePayOpts(
    requiredBillingAddressFields:
        (json['required_billing_address_fields'] as List)
            ?.map((e) =>
                _$enumDecodeNullable(_$RequiredBillingAddressFieldsEnumMap, e))
            ?.toList(),
    requiredShippingAddressFields:
        (json['required_shipping_address_fields'] as List)
            ?.map((e) =>
                _$enumDecodeNullable(_$RequiredShippingAddressFieldsEnumMap, e))
            ?.toList(),
    shippingMethod: (json['shipping_method'] as List)
        ?.map((e) => e == null
            ? null
            : ShippingMethod.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    currencyCode: json['currency_code'] as String,
    countryCode: json['country_code'] as String,
    shippingType:
        _$enumDecodeNullable(_$ShippingTypeEnumMap, json['shipping_type']),
    items: (json['items'] as List)
        ?.map((e) => e == null
            ? null
            : ApplePayLineItem.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$ApplePayOptsToJson(ApplePayOpts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull(
      'required_billing_address_fields',
      instance.requiredBillingAddressFields
          ?.map((e) => _$RequiredBillingAddressFieldsEnumMap[e])
          ?.toList());
  writeNotNull(
      'required_shipping_address_fields',
      instance.requiredShippingAddressFields
          ?.map((e) => _$RequiredShippingAddressFieldsEnumMap[e])
          ?.toList());
  writeNotNull('shipping_method',
      instance.shippingMethod?.map((e) => e?.toJson())?.toList());
  writeNotNull('currency_code', instance.currencyCode);
  writeNotNull('country_code', instance.countryCode);
  writeNotNull('shipping_type', _$ShippingTypeEnumMap[instance.shippingType]);
  writeNotNull('items', instance.items?.map((e) => e?.toJson())?.toList());
  return val;
}

T _$enumDecode<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }

  final value = enumValues.entries
      .singleWhere((e) => e.value == source, orElse: () => null)
      ?.key;

  if (value == null && unknownValue == null) {
    throw ArgumentError('`$source` is not one of the supported values: '
        '${enumValues.values.join(', ')}');
  }
  return value ?? unknownValue;
}

T _$enumDecodeNullable<T>(
  Map<T, dynamic> enumValues,
  dynamic source, {
  T unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source, unknownValue: unknownValue);
}

const _$RequiredBillingAddressFieldsEnumMap = {
  RequiredBillingAddressFields.all: 'all',
  RequiredBillingAddressFields.name: 'name',
  RequiredBillingAddressFields.email: 'email',
  RequiredBillingAddressFields.phone: 'phone',
  RequiredBillingAddressFields.postal_address: 'postal_address',
};

const _$RequiredShippingAddressFieldsEnumMap = {
  RequiredShippingAddressFields.all: 'all',
  RequiredShippingAddressFields.name: 'name',
  RequiredShippingAddressFields.email: 'email',
  RequiredShippingAddressFields.phone: 'phone',
  RequiredShippingAddressFields.postal_address: 'postal_address',
};

const _$ShippingTypeEnumMap = {
  ShippingType.shipping: 'shipping',
  ShippingType.delivery: 'delivery',
  ShippingType.store_pickup: 'store_pickup',
  ShippingType.service_pickup: 'service_pickup',
};
