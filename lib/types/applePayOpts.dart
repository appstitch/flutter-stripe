import 'package:appstitch_stripe/types/shippingMethod.dart';
import 'package:json_annotation/json_annotation.dart';
import 'applePayLineItem.dart';

part 'applePayOpts.g.dart';

enum RequiredBillingAddressFields { all, name, email, phone, postal_address }

enum RequiredShippingAddressFields { all, name, email, phone, postal_address }

enum ShippingType { shipping, delivery, store_pickup, service_pickup }

@JsonSerializable(
    explicitToJson: true, includeIfNull: false, fieldRename: FieldRename.snake)
class ApplePayOpts {
  List<RequiredBillingAddressFields> requiredBillingAddressFields;
  List<RequiredShippingAddressFields> requiredShippingAddressFields;
  List<ShippingMethod> shippingMethod;
  String currencyCode;
  String countryCode;
  ShippingType shippingType;
  List<ApplePayLineItem> items;

  ApplePayOpts(
      {this.requiredBillingAddressFields,
      this.requiredShippingAddressFields,
      this.shippingMethod,
      this.currencyCode,
      this.countryCode,
      this.shippingType,
      this.items});

  factory ApplePayOpts.fromJson(Map<String, dynamic> json) =>
      _$ApplePayOptsFromJson(json);
  Map<String, dynamic> toJson() => _$ApplePayOptsToJson(this);
}
