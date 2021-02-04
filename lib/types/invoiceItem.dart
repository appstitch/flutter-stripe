import 'package:appstitch_stripe/types/price.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:appstitch_stripe/types/base.dart';

part 'invoiceItem.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
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

  int amount;
  String currency;
  String customer;
  int date;
  String description;
  String id;
  String invoice;
  bool livemode;
  Map<String, dynamic> metadata;
  String object;
  Price price;
  bool proration;
  int quantity;
  String subscription;
  List<String> taxRates;
  int unitAmount;
  String unitAmountDecimal;

  factory InvoiceItem.fromJson(Map<String, dynamic> json) =>
      _$InvoiceItemFromJson(json);
  Map<String, dynamic> toJson() => _$InvoiceItemToJson(this);
}
