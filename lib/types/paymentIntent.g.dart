// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paymentIntent.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentIntent _$PaymentIntentFromJson(Map<String, dynamic> json) {
  return PaymentIntent(
    amount: (json['amount'] as num)?.toDouble(),
    amountRefunded: (json['amountRefunded'] as num)?.toDouble(),
    applicationFeeAmount: (json['applicationFeeAmount'] as num)?.toDouble(),
    chargeName: json['chargeName'] as String,
    confirm: json['confirm'] as bool,
    created: (json['created'] as num)?.toDouble(),
    currency: json['currency'] as String,
    customer: json['customer'] as String,
    description: json['description'] as String,
    id: json['id'] as String,
    invoice: json['invoice'] as String,
    metadata: json['metadata'] as Map<String, dynamic>,
    object: json['object'] as String,
    offSession: json['offSession'] as bool,
    paymentMethod: json['paymentMethod'] as String,
    paymentMethodTypes:
        (json['paymentMethodTypes'] as List)?.map((e) => e as String)?.toList(),
    receiptEmail: json['receiptEmail'] as String,
    statementDescriptor: json['statementDescriptor'] as String,
    statementDescriptorSuffix: json['statementDescriptorSuffix'] as String,
    status: json['status'] as String,
    stripeAccount: json['stripeAccount'] as String,
    testMode: json['testMode'] as bool,
    transferData: json['transferData'] == null
        ? null
        : TransferData.fromJson(json['transferData'] as Map<String, dynamic>),
    transferGroup: json['transferGroup'] as String,
  )
    ..stitch_id = json['stitch_id'] as String
    ..stripe_error = json['type'] as String;
}

Map<String, dynamic> _$PaymentIntentToJson(PaymentIntent instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('stitch_id', instance.stitch_id);
  writeNotNull('type', instance.stripe_error);
  val['amount'] = instance.amount;
  val['amountRefunded'] = instance.amountRefunded;
  val['applicationFeeAmount'] = instance.applicationFeeAmount;
  val['chargeName'] = instance.chargeName;
  val['confirm'] = instance.confirm;
  val['created'] = instance.created;
  val['currency'] = instance.currency;
  val['customer'] = instance.customer;
  val['description'] = instance.description;
  val['id'] = instance.id;
  val['invoice'] = instance.invoice;
  val['metadata'] = instance.metadata;
  val['object'] = instance.object;
  val['offSession'] = instance.offSession;
  val['paymentMethod'] = instance.paymentMethod;
  val['paymentMethodTypes'] = instance.paymentMethodTypes;
  val['receiptEmail'] = instance.receiptEmail;
  val['statementDescriptor'] = instance.statementDescriptor;
  val['statementDescriptorSuffix'] = instance.statementDescriptorSuffix;
  val['status'] = instance.status;
  val['stripeAccount'] = instance.stripeAccount;
  val['testMode'] = instance.testMode;
  val['transferData'] = instance.transferData?.toJson();
  val['transferGroup'] = instance.transferGroup;
  return val;
}
