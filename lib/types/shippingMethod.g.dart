// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shippingMethod.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ShippingMethod _$ShippingMethodFromJson(Map<String, dynamic> json) {
  return ShippingMethod(
    amount: json['amount'] as String,
    detail: json['detail'] as String,
    id: json['id'] as String,
    label: json['label'] as String,
  );
}

Map<String, dynamic> _$ShippingMethodToJson(ShippingMethod instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount', instance.amount);
  writeNotNull('detail', instance.detail);
  writeNotNull('id', instance.id);
  writeNotNull('label', instance.label);
  return val;
}
