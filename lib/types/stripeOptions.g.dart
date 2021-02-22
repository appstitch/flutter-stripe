// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stripeOptions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StripeOptions _$StripeOptionsFromJson(Map<String, dynamic> json) {
  return StripeOptions(
    publishableKey: json['publishable_key'] as String,
    merchantId: json['merchant_id'] as String,
    androidPayMode: json['android_pay_mode'] as String,
  );
}

Map<String, dynamic> _$StripeOptionsToJson(StripeOptions instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('publishable_key', instance.publishableKey);
  writeNotNull('merchant_id', instance.merchantId);
  writeNotNull('android_pay_mode', instance.androidPayMode);
  return val;
}
