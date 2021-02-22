import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
import 'androidPayLineItem.dart';

part 'androidPayOpts.g.dart';

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class AndroidPayOpts {
  bool billingAddressRequired;
  String currencyCode;
  List<AndroidPayLineItem> lineItems;
  bool shippingAddressRequired;
  List<String> shippingCountries;
  String totalPrice;

  AndroidPayOpts(
      {this.billingAddressRequired,
      @required this.currencyCode,
      this.lineItems,
      this.shippingAddressRequired,
      this.shippingCountries,
      @required this.totalPrice});

  factory AndroidPayOpts.fromJson(Map<String, dynamic> json) =>
      _$AndroidPayOptsFromJson(json);
  Map<String, dynamic> toJson() => _$AndroidPayOptsToJson(this);
}
