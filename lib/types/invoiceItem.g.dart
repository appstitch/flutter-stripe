// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'invoiceItem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InvoiceItem _$InvoiceItemFromJson(Map<String, dynamic> json) {
  return InvoiceItem(
    amount: json['amount'] as int,
    currency: json['currency'] as String,
    customer: json['customer'] as String,
    date: json['date'] as int,
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
    quantity: json['quantity'] as int,
    subscription: json['subscription'] as String,
    taxRates: (json['tax_rates'] as List)?.map((e) => e as String)?.toList(),
    unitAmount: json['unit_amount'] as int,
    unitAmountDecimal: json['unit_amount_decimal'] as String,
  )
    ..blueprintId = json['blueprint_id'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String;
}

Map<String, dynamic> _$InvoiceItemToJson(InvoiceItem instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('blueprint_id', instance.blueprintId);
  writeNotNull('type', instance.stripeError);
  writeNotNull('message', instance.message);
  writeNotNull('param', instance.param);
  writeNotNull('amount', instance.amount);
  writeNotNull('currency', instance.currency);
  writeNotNull('customer', instance.customer);
  writeNotNull('date', instance.date);
  writeNotNull('description', instance.description);
  writeNotNull('id', instance.id);
  writeNotNull('invoice', instance.invoice);
  writeNotNull('livemode', instance.livemode);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('object', instance.object);
  writeNotNull('price', instance.price?.toJson());
  writeNotNull('proration', instance.proration);
  writeNotNull('quantity', instance.quantity);
  writeNotNull('subscription', instance.subscription);
  writeNotNull('tax_rates', instance.taxRates);
  writeNotNull('unit_amount', instance.unitAmount);
  writeNotNull('unit_amount_decimal', instance.unitAmountDecimal);
  return val;
}
