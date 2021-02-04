// GENERATED CODE - DO NOT MODIFY BY HAND

part of appstitch_stripe;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCustomerOpts _$CreateCustomerOptsFromJson(Map<String, dynamic> json) {
  return CreateCustomerOpts(
    address: json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
    balance: json['balance'] as int,
    coupon: json['coupon'] as String,
    description: json['description'] as String,
    email: json['email'] as String,
    invoicePrefix: json['invoice_prefix'] as String,
    metadata: json['metadata'] as Map<String, dynamic>,
    name: json['name'] as String,
    nextInvoiceSequence: json['next_invoice_sequence'] as int,
    paymentMethod: json['payment_method'] as String,
    phone: json['phone'] as String,
    preferredLocals:
        (json['preferred_locals'] as List)?.map((e) => e as String)?.toList(),
    promotionCode: json['promotion_code'] as String,
    source: json['source'] as String,
  )
    ..stitchKey = json['stitch_key'] as String
    ..stripeError = json['type'] as String
    ..message = json['message'] as String
    ..param = json['param'] as String
    ..stripeAccount = json['stripe_account'] as String;
}

Map<String, dynamic> _$CreateCustomerOptsToJson(CreateCustomerOpts instance) {
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
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('balance', instance.balance);
  writeNotNull('coupon', instance.coupon);
  writeNotNull('description', instance.description);
  writeNotNull('email', instance.email);
  writeNotNull('invoice_prefix', instance.invoicePrefix);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('name', instance.name);
  writeNotNull('next_invoice_sequence', instance.nextInvoiceSequence);
  writeNotNull('payment_method', instance.paymentMethod);
  writeNotNull('phone', instance.phone);
  writeNotNull('preferred_locals', instance.preferredLocals);
  writeNotNull('promotion_code', instance.promotionCode);
  writeNotNull('source', instance.source);
  return val;
}
