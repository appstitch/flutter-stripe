import 'package:stripe/types/price.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:stripe/types/base.dart';

part 'invoiceItem.g.dart';

@JsonSerializable(explicitToJson: true)
class InvoiceItem extends Base {
  InvoiceItem({
    this.amount,
    this.currency,
    this.customer,
    this.date,
    this.description,
    this.id,
    this.invoice,
    this.livemode,
    this.metadata,
    this.object,
    this.price,
    this.proration,
    this.quantity,
    this.subscription,
    this.taxRates,
    this.unitAmount,
    this.unitAmountDecimal,
  });

  double amount;
  String currency;
  String customer;
  double date;
  String description;
  String id;
  String invoice;
  bool livemode;
  Map<String, dynamic> metadata;
  String object;
  Price price;
  bool proration;
  double quantity;
  String subscription;
  List<String> taxRates;
  double unitAmount;
  String unitAmountDecimal;

  factory InvoiceItem.fromJson(Map<String, dynamic> json) =>
      _$InvoiceItemFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceItemToJson(this);
}
