// GENERATED CODE - DO NOT MODIFY BY HAND

part of appstitch_stripe;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BillingThresholdsOpts _$BillingThresholdsOptsFromJson(
    Map<String, dynamic> json) {
  return BillingThresholdsOpts(
    amountGte: json['amount_gte'] as int,
    resetBillingCycleAnchor: json['reset_billing_cycle_anchor'] as bool,
  );
}

Map<String, dynamic> _$BillingThresholdsOptsToJson(
    BillingThresholdsOpts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('amount_gte', instance.amountGte);
  writeNotNull('reset_billing_cycle_anchor', instance.resetBillingCycleAnchor);
  return val;
}
