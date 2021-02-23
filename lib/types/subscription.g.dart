// GENERATED CODE - DO NOT MODIFY BY HAND

part of appstitch_stripe;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return Subscription(
    cancelAtPeriodEnd: json['cancel_at_period_end'] as bool,
    currentPeriodEnd: json['current_period_end'] as int,
    currentPeriodStart: json['current_period_start'] as int,
    customer: json['customer'] as String,
    daysUntilDue: json['days_until_due'] as int,
    defaultPaymentMethod: json['default_payment_method'] as String,
    defaultSource: json['default_source'] as String,
    description: json['description'] as String,
    id: json['id'] as String,
    invoice: json['invoice'] as String,
    items: json['items'] == null
        ? null
        : SubscriptionItemList.fromJson(json['items'] as Map<String, dynamic>),
    metadata: json['metadata'] as Map<String, dynamic>,
    object: json['object'] as String,
    subscriptionName: json['subscription_name'] as String,
    transferData: json['transfer_data'] == null
        ? null
        : TransferData.fromJson(json['transfer_data'] as Map<String, dynamic>),
  )
    ..blueprintId = json['blueprintId'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String
    ..stripeAccount = json['stripeAccount'] as String;
}

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) {
  final val = <String, dynamic>{
    'blueprintId': instance.blueprintId,
    'type': instance.stripeError,
    'message': instance.message,
    'param': instance.param,
    'stripeAccount': instance.stripeAccount,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('cancel_at_period_end', instance.cancelAtPeriodEnd);
  writeNotNull('current_period_end', instance.currentPeriodEnd);
  writeNotNull('current_period_start', instance.currentPeriodStart);
  writeNotNull('customer', instance.customer);
  writeNotNull('days_until_due', instance.daysUntilDue);
  writeNotNull('default_payment_method', instance.defaultPaymentMethod);
  writeNotNull('default_source', instance.defaultSource);
  writeNotNull('description', instance.description);
  writeNotNull('id', instance.id);
  writeNotNull('invoice', instance.invoice);
  writeNotNull('items', instance.items?.toJson());
  writeNotNull('metadata', instance.metadata);
  writeNotNull('object', instance.object);
  writeNotNull('subscription_name', instance.subscriptionName);
  writeNotNull('transfer_data', instance.transferData?.toJson());
  return val;
}
