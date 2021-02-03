// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoiceItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceItem _$InvoiceItemFromJson(Map<String, dynamic> json) {
  return InvoiceItem(
    amount: (json['amount'] as num)?.toDouble(),
    currency: json['currency'] as String,
    customer: json['customer'] as String,
    date: (json['date'] as num)?.toDouble(),
    description: json['description'] as String,
    id: json['id'] as String,
    invoice: json['invoice'] as String,
    livemode: json['livemode'] as bool,
    metadata: json['metadata'] as Map<String, dynamic>,
    object: json['object'] as String,
    price: json['price'] == null
        ? null
        : Price.fromJson(json['price'] as Map<String, dynamic>),
    proration: json['proration'] as bool,
    quantity: (json['quantity'] as num)?.toDouble(),
    subscription: json['subscription'] as String,
    taxRates: (json['taxRates'] as List)?.map((e) => e as String)?.toList(),
    unitAmount: (json['unitAmount'] as num)?.toDouble(),
    unitAmountDecimal: json['unitAmountDecimal'] as String,
  )
    ..stitch_id = json['stitch_id'] as String
    ..stripe_error = json['type'] as String;
}

Map<String, dynamic> _$InvoiceItemToJson(InvoiceItem instance) =>
    <String, dynamic>{
      'stitch_id': instance.stitch_id,
      'type': instance.stripe_error,
      'amount': instance.amount,
      'currency': instance.currency,
      'customer': instance.customer,
      'date': instance.date,
      'description': instance.description,
      'id': instance.id,
      'invoice': instance.invoice,
      'livemode': instance.livemode,
      'metadata': instance.metadata,
      'object': instance.object,
      'price': instance.price?.toJson(),
      'proration': instance.proration,
      'quantity': instance.quantity,
      'subscription': instance.subscription,
      'taxRates': instance.taxRates,
      'unitAmount': instance.unitAmount,
      'unitAmountDecimal': instance.unitAmountDecimal,
    };
