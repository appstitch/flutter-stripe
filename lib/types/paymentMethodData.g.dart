// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paymentMethodData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethodData _$PaymentMethodDataFromJson(Map<String, dynamic> json) {
  return PaymentMethodData(
    card: json['card'] == null
        ? null
        : CreateCardOpts.fromJson(json['card'] as Map<String, dynamic>),
    type: json['type'] as String,
  );
}

Map<String, dynamic> _$PaymentMethodDataToJson(PaymentMethodData instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('card', instance.card?.toJson());
  writeNotNull('type', instance.type);
  return val;
}
