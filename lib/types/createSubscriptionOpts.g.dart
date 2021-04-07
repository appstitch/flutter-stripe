// GENERATED CODE - DO NOT MODIFY BY HAND

part of appstitch_stripe;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateSubscriptionOpts _$CreateSubscriptionOptsFromJson(
    Map<String, dynamic> json) {
  return CreateSubscriptionOpts(
    active: json['active'] as bool?,
    addInvoiceItems: (json['add_invoice_items'] as List<dynamic>?)
        ?.map((e) => e as Map<String, dynamic>)
        .toList(),
    amount: json['amount'] as int?,
    applicationFeePercent: json['application_fee_percent'] as int?,
    backdateStartSate: json['backdate_start_sate'] as int?,
    billingCycleAnchor: json['billing_cycle_anchor'] as int?,
    billingThresholds: json['billing_thresholds'] == null
        ? null
        : BillingThresholdsOpts.fromJson(
            json['billing_thresholds'] as Map<String, dynamic>),
    cancelAt: json['cancel_at'] as int?,
    cancelAtPeriodEnd: json['cancel_at_period_end'] as bool?,
    collectionMethod:
        _$enumDecodeNullable(_$MethodEnumMap, json['collection_method']),
    coupon: json['coupon'] as String?,
    currency: json['currency'] as String?,
    customer: json['customer'] as String?,
    daysUntilDue: json['days_until_due'] as int?,
    defaultPaymentMethod: json['default_payment_method'] as String?,
    defaultSource: json['default_source'] as String?,
    defaultTaxRates: json['default_tax_rates'] as String?,
    interval: _$enumDecodeNullable(_$IntervalEnumMap, json['interval']),
    items: (json['items'] as List<dynamic>?)
        ?.map((e) => SubscriptionItemOpts.fromJson(e as Map<String, dynamic>))
        .toList(),
    metadata: json['metadata'] as Map<String, dynamic>?,
    offSession: json['off_session'] as bool?,
    paymentBehaviour: _$enumDecodeNullable(
        _$PaymentBehaviourEnumMap, json['payment_behaviour']),
    plan: json['plan'] as String?,
    price: json['price'] as String?,
    quantity: json['quantity'] as String?,
  )
    ..blueprintId = json['blueprint_id'] as String?
    ..id = json['id'] as String?
    ..stripeError = json['type'] as String?
    ..message = json['message'] as String?
    ..param = json['param'] as String?
    ..object = json['object'] as String?
    ..stripeAccount = json['stripe_account'] as String?;
}

Map<String, dynamic> _$CreateSubscriptionOptsToJson(
    CreateSubscriptionOpts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blueprint_id', instance.blueprintId);
  writeNotNull('id', instance.id);
  writeNotNull('type', instance.stripeError);
  writeNotNull('message', instance.message);
  writeNotNull('param', instance.param);
  writeNotNull('object', instance.object);
  writeNotNull('stripe_account', instance.stripeAccount);
  writeNotNull('active', instance.active);
  writeNotNull('add_invoice_items', instance.addInvoiceItems);
  writeNotNull('amount', instance.amount);
  writeNotNull('application_fee_percent', instance.applicationFeePercent);
  writeNotNull('backdate_start_sate', instance.backdateStartSate);
  writeNotNull('billing_cycle_anchor', instance.billingCycleAnchor);
  writeNotNull('billing_thresholds', instance.billingThresholds?.toJson());
  writeNotNull('cancel_at', instance.cancelAt);
  writeNotNull('cancel_at_period_end', instance.cancelAtPeriodEnd);
  writeNotNull('collection_method', _$MethodEnumMap[instance.collectionMethod]);
  writeNotNull('coupon', instance.coupon);
  writeNotNull('currency', instance.currency);
  writeNotNull('customer', instance.customer);
  writeNotNull('days_until_due', instance.daysUntilDue);
  writeNotNull('default_payment_method', instance.defaultPaymentMethod);
  writeNotNull('default_source', instance.defaultSource);
  writeNotNull('default_tax_rates', instance.defaultTaxRates);
  writeNotNull('interval', _$IntervalEnumMap[instance.interval]);
  writeNotNull('items', instance.items?.map((e) => e.toJson()).toList());
  writeNotNull('metadata', instance.metadata);
  writeNotNull('off_session', instance.offSession);
  writeNotNull('payment_behaviour',
      _$PaymentBehaviourEnumMap[instance.paymentBehaviour]);
  writeNotNull('plan', instance.plan);
  writeNotNull('price', instance.price);
  writeNotNull('quantity', instance.quantity);
  return val;
}

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$MethodEnumMap = {
  Method.automatic: 'automatic',
  Method.manual: 'manual',
};

const _$IntervalEnumMap = {
  Interval.day: 'day',
  Interval.month: 'month',
  Interval.week: 'week',
  Interval.year: 'year',
};

const _$PaymentBehaviourEnumMap = {
  PaymentBehaviour.allow_incomplete: 'allow_incomplete',
  PaymentBehaviour.error_if_incomplete: 'error_if_incomplete',
  PaymentBehaviour.pending_if_incomplete: 'pending_if_incomplete',
};
