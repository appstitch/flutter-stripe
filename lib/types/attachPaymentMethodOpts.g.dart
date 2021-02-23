// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachPaymentMethodOpts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttachPaymentMethodOpts _$AttachPaymentMethodOptsFromJson(
    Map<String, dynamic> json) {
  return AttachPaymentMethodOpts(
    customer: json['customer'] as String,
    id: json['id'] as String,
    setDefault: json['setDefault'] as bool,
  );
}

Map<String, dynamic> _$AttachPaymentMethodOptsToJson(
    AttachPaymentMethodOpts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customer', instance.customer);
  writeNotNull('id', instance.id);
  writeNotNull('setDefault', instance.setDefault);
  return val;
}
