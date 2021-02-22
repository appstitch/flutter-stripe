// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Customer _$CustomerFromJson(Map<String, dynamic> json) {
  return Customer(
    address: json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
    balance: json['balance'] as int,
    created: json['created'] as int,
    currency: json['currency'] as String,
    defaultSource: json['default_source'] as String,
    delinquent: json['delinquent'] as bool,
    description: json['description'] as String,
    discount: json['discount'] == null
        ? null
        : Discount.fromJson(json['discount'] as Map<String, dynamic>),
    email: json['email'] as String,
    invoicePrefix: json['invoice_prefix'] as String,
    livemode: json['livemode'] as bool,
    metadata: json['metadata'] as Map<String, dynamic>,
    name: json['name'] as String,
    nextInvoiceSequence: json['next_invoice_sequence'] as int,
    phone: json['phone'] as String,
    preferredLocales:
        (json['preferred_locales'] as List)?.map((e) => e as String)?.toList(),
    sources: (json['sources'] as List)
        ?.map((e) =>
            e == null ? null : Source.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  )
    ..blueprintId = json['blueprint_id'] as String
    ..id = json['id'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String
    ..object = json['object'] as String
    ..stripeAccount = json['stripe_account'] as String
    ..invoiceSettings = json['invoice_settings'] as Map<String, dynamic>;
}

Map<String, dynamic> _$CustomerToJson(Customer instance) {
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
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('balance', instance.balance);
  writeNotNull('created', instance.created);
  writeNotNull('currency', instance.currency);
  writeNotNull('default_source', instance.defaultSource);
  writeNotNull('delinquent', instance.delinquent);
  writeNotNull('description', instance.description);
  writeNotNull('discount', instance.discount?.toJson());
  writeNotNull('email', instance.email);
  writeNotNull('invoice_prefix', instance.invoicePrefix);
  writeNotNull('invoice_settings', instance.invoiceSettings);
  writeNotNull('livemode', instance.livemode);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('name', instance.name);
  writeNotNull('next_invoice_sequence', instance.nextInvoiceSequence);
  writeNotNull('phone', instance.phone);
  writeNotNull('preferred_locales', instance.preferredLocales);
  writeNotNull('sources', instance.sources?.map((e) => e?.toJson())?.toList());
  return val;
}
