// GENERATED CODE - DO NOT MODIFY BY HAND

part of stripe;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateCustomerOpts _$CreateCustomerOptsFromJson(Map<String, dynamic> json) {
  return CreateCustomerOpts(
    address: json['address'] == null
        ? null
        : Address.fromJson(json['address'] as Map<String, dynamic>),
    balance: (json['balance'] as num)?.toDouble(),
    coupon: json['coupon'] as String,
    description: json['description'] as String,
    email: json['email'] as String,
    invoicePrefix: json['invoicePrefix'] as String,
    metadata: json['metadata'] as Map<String, dynamic>,
    name: json['name'] as String,
    nextInvoiceSequence: (json['nextInvoiceSequence'] as num)?.toDouble(),
    paymentMethod: json['paymentMethod'] as String,
    phone: json['phone'] as String,
    preferredLocals:
        (json['preferredLocals'] as List)?.map((e) => e as String)?.toList(),
    promotionCode: json['promotionCode'] as String,
    source: json['source'] as String,
    stripeAccount: json['stripeAccount'] as String,
  )
    ..stitch_id = json['stitch_id'] as String
    ..stripe_error = json['type'] as String;
}

Map<String, dynamic> _$CreateCustomerOptsToJson(CreateCustomerOpts instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stitch_id', instance.stitch_id);
  writeNotNull('type', instance.stripe_error);
  writeNotNull('address', instance.address?.toJson());
  writeNotNull('balance', instance.balance);
  writeNotNull('coupon', instance.coupon);
  writeNotNull('description', instance.description);
  writeNotNull('email', instance.email);
  writeNotNull('invoicePrefix', instance.invoicePrefix);
  writeNotNull('metadata', instance.metadata);
  writeNotNull('name', instance.name);
  writeNotNull('nextInvoiceSequence', instance.nextInvoiceSequence);
  writeNotNull('paymentMethod', instance.paymentMethod);
  writeNotNull('phone', instance.phone);
  writeNotNull('preferredLocals', instance.preferredLocals);
  writeNotNull('promotionCode', instance.promotionCode);
  writeNotNull('source', instance.source);
  writeNotNull('stripeAccount', instance.stripeAccount);
  return val;
}
