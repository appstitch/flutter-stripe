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
    balance: (json['balance'] as num)?.toDouble(),
    created: (json['created'] as num)?.toDouble(),
    currency: json['currency'] as String,
    defaultSource: json['defaultSource'] as String,
    delinquent: json['delinquent'] as bool,
    description: json['description'] as String,
    discount: json['discount'] == null
        ? null
        : Discount.fromJson(json['discount'] as Map<String, dynamic>),
    email: json['email'] as String,
    invoicePrefix: json['invoicePrefix'] as String,
    livemode: json['livemode'] as bool,
    metadata: json['metadata'] as Map<String, dynamic>,
    name: json['name'] as String,
    nextInvoiceSequence: (json['nextInvoiceSequence'] as num)?.toDouble(),
    phone: json['phone'] as String,
    preferredLocales:
        (json['preferredLocales'] as List)?.map((e) => e as String)?.toList(),
    sources: (json['sources'] as List)
        ?.map((e) =>
            e == null ? null : Source.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    stripeAccount: json['stripeAccount'] as String,
  )
    ..stitch_id = json['stitch_id'] as String
    ..stripe_error = json['type'] as String;
}

Map<String, dynamic> _$CustomerToJson(Customer instance) => <String, dynamic>{
      'stitch_id': instance.stitch_id,
      'type': instance.stripe_error,
      'address': instance.address?.toJson(),
      'balance': instance.balance,
      'created': instance.created,
      'currency': instance.currency,
      'defaultSource': instance.defaultSource,
      'delinquent': instance.delinquent,
      'description': instance.description,
      'discount': instance.discount?.toJson(),
      'email': instance.email,
      'invoicePrefix': instance.invoicePrefix,
      'livemode': instance.livemode,
      'metadata': instance.metadata,
      'name': instance.name,
      'nextInvoiceSequence': instance.nextInvoiceSequence,
      'phone': instance.phone,
      'preferredLocales': instance.preferredLocales,
      'sources': instance.sources?.map((e) => e?.toJson())?.toList(),
      'stripeAccount': instance.stripeAccount,
    };
