// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancelPaymentIntentOpts.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CancelPaymentIntentOpts _$CancelPaymentIntentOptsFromJson(
    Map<String, dynamic> json) {
  return CancelPaymentIntentOpts(
    cancellationReason: _$enumDecodeNullable(
        _$CancellationReasonEnumMap, json['cancellationReason']),
    id: json['id'] as String,
    stripeAccount: json['stripeAccount'] as String,
  )
    ..stitch_id = json['stitch_id'] as String
    ..stripe_error = json['type'] as String;
}

Map<String, dynamic> _$CancelPaymentIntentOptsToJson(
        CancelPaymentIntentOpts instance) =>
    <String, dynamic>{
      'stitch_id': instance.stitch_id,
      'type': instance.stripe_error,
      'cancellationReason':
          _$CancellationReasonEnumMap[instance.cancellationReason],
      'id': instance.id,
      'stripeAccount': instance.stripeAccount,
    };

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
  CancellationReason.ABANDONED: 'ABANDONED',
  CancellationReason.DUPLICATE: 'DUPLICATE',
  CancellationReason.FRAUDULENT: 'FRAUDULENT',
  CancellationReason.REQUESTED_BY_CUSTOMER: 'REQUESTED_BY_CUSTOMER',
};
