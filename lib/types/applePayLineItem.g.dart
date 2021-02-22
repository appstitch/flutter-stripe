// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'applePayLineItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplePayLineItem _$ApplePayLineItemFromJson(Map<String, dynamic> json) {
  return ApplePayLineItem(
    label: json['label'] as String,
    amount: json['amount'] as String,
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$ApplePayLineItemToJson(ApplePayLineItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('label', instance.label);
  writeNotNull('amount', instance.amount);
  writeNotNull('type', instance.type);
  return val;
}
