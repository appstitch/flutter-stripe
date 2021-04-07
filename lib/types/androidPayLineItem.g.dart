// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'androidPayLineItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AndroidPayLineItem _$AndroidPayLineItemFromJson(Map<String, dynamic> json) {
  return AndroidPayLineItem(
    currencyCode: json['currency_code'] as String?,
    description: json['description'] as String?,
    quantity: json['quantity'] as String?,
    totalPrice: json['total_price'] as String?,
    unitPrice: json['unit_price'] as String?,
  );
}

Map<String, dynamic> _$AndroidPayLineItemToJson(AndroidPayLineItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('currency_code', instance.currencyCode);
  writeNotNull('description', instance.description);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('total_price', instance.totalPrice);
  writeNotNull('unit_price', instance.unitPrice);
  return val;
}
