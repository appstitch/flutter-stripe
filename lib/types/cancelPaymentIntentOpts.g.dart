// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancelPaymentIntentOpts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelPaymentIntentOpts _$CancelPaymentIntentOptsFromJson(
    Map<String, dynamic> json) {
  return CancelPaymentIntentOpts(
    cancellationReason: _$enumDecodeNullable(
        _$CancellationReasonEnumMap, json['cancellation_reason']),
    id: json['id'] as String,
  )
    ..stitchKey = json['stitch_key'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String
    ..stripeAccount = json['stripe_account'] as String;
}

Map<String, dynamic> _$CancelPaymentIntentOptsToJson(
    CancelPaymentIntentOpts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stitch_key', instance.stitchKey);
  writeNotNull('type', instance.stripeError);
  writeNotNull('message', instance.message);
  writeNotNull('param', instance.param);
  writeNotNull('stripe_account', instance.stripeAccount);
  writeNotNull('cancellation_reason',
      _$CancellationReasonEnumMap[instance.cancellationReason]);
  writeNotNull('id', instance.id);
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

const _$CancellationReasonEnumMap = {
  CancellationReason.abandoned: 'abandoned',
  CancellationReason.duplicate: 'duplicate',
  CancellationReason.fraudulent: 'fraudulent',
  CancellationReason.requested_by_customer: 'requested_by_customer',
};
