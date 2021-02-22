import 'package:appstitch_stripe/types.dart';

class CardFormPaymentRequest {
  PrefilledInformation prefilledInformation;
  String requiredBillingAddressFields;

  CardFormPaymentRequest(
      {this.prefilledInformation, this.requiredBillingAddressFields});

  factory CardFormPaymentRequest.fromJson(Map<String, dynamic> json) {
    return CardFormPaymentRequest(
      prefilledInformation: json['prefilledInformation'] != null
          ? PrefilledInformation.fromJson(json['prefilledInformation'])
          : null,
      requiredBillingAddressFields: json['requiredBillingAddressFields'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.requiredBillingAddressFields !=
        null) if (this.requiredBillingAddressFields != null)
      data['requiredBillingAddressFields'] = this.requiredBillingAddressFields;
    if (this.prefilledInformation != null) {
      data['prefilledInformation'] = this.prefilledInformation.toJson();
    }
    return data;
  }
}

class PrefilledInformation {
  BillingAddress billingAddress;

  PrefilledInformation({this.billingAddress});

  factory PrefilledInformation.fromJson(Map<String, dynamic> json) {
    return PrefilledInformation(
      billingAddress: json['billingAddress'] != null
          ? BillingAddress.fromJson(json['billingAddress'])
          : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.billingAddress != null) {
      data['billingAddress'] = this.billingAddress.toJson();
    }
    return data;
  }
}

class BillingAddress {
  String city;
  String country;
  String line1;
  String line2;
  String name;
  String postalCode;
  String state;

  BillingAddress(
      {this.city,
      this.country,
      this.line1,
      this.line2,
      this.name,
      this.postalCode,
      this.state});

  factory BillingAddress.fromJson(Map<String, dynamic> json) {
    return BillingAddress(
      city: json['city'],
      country: json['country'],
      line1: json['line1'],
      line2: json['line2'],
      name: json['name'],
      postalCode: json['postalCode'],
      state: json['state'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.city != null) data['city'] = this.city;
    if (this.country != null) data['country'] = this.country;
    if (this.line1 != null) data['line1'] = this.line1;
    if (this.line2 != null) data['line2'] = this.line2;
    if (this.name != null) data['name'] = this.name;
    if (this.postalCode != null) data['postalCode'] = this.postalCode;
    if (this.state != null) data['state'] = this.state;
    return data;
  }
}

class PaymentMethodRequest {
  final BillingAddress billingAddress;
  final CreateCardOpts card;
  final Token token;
  final Map<String, String> metadata;

  PaymentMethodRequest(
      {this.billingAddress, this.card, this.token, this.metadata}) {
    assert(card != null || token != null);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.card != null) {
      data['card'] = card.toJson();
    }
    if (this.token != null) {
      data['token'] = token.toJson();
    }
    if (this.billingAddress != null) {
      data['billingAddress'] = this.billingAddress.toJson();
    }
    if (this.metadata != null) {
      if (this.metadata != null) data['metadata'] = this.metadata;
    }
    return data;
  }
}

// class PaymentMethod {
//   BillingDetails billingDetails;
//   CreateCardOpts card;
//   num created;
//   String customerId;
//   String id;
//   bool livemode;
//   String type;

//   PaymentMethod(
//       {this.billingDetails,
//       this.card,
//       this.created,
//       this.customerId,
//       this.id,
//       this.livemode,
//       this.type});

//   factory PaymentMethod.fromJson(Map<String, dynamic> json) {
//     return PaymentMethod(
//       billingDetails: json['billingDetails'] != null
//           ? BillingDetails.fromJson(json['billingDetails'])
//           : null,
//       card: json['card'] != null ? CreateCardOpts.fromJson(json['card']) : null,
//       created: json['created'],
//       customerId: json['customerId'],
//       id: json['id'],
//       livemode: json['livemode'],
//       type: json['type'],
//     );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     if (this.created != null) if (this.created != null)
//       data['created'] = this.created;
//     if (this.customerId != null) data['customerId'] = this.customerId;
//     if (this.id != null) data['id'] = this.id;
//     if (this.livemode != null) data['livemode'] = this.livemode;
//     if (this.type != null) data['type'] = this.type;
//     if (this.billingDetails != null) {
//       data['billingDetails'] = this.billingDetails.toJson();
//     }
//     if (this.card != null) {
//       data['card'] = this.card.toJson();
//     }
//     return data;
//   }
// }

class BillingDetails {
  BillingAddress address;
  String email;
  String name;
  String phone;

  BillingDetails({this.address, this.email, this.name, this.phone});

  factory BillingDetails.fromJson(Map<String, dynamic> json) {
    return BillingDetails(
      address: json['address'] != null
          ? BillingAddress.fromJson(json['address'])
          : null,
      email: json['email'],
      name: json['name'],
      phone: json['phone'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.email != null) data['email'] = this.email;
    if (this.name != null) data['name'] = this.name;
    if (this.phone != null) data['phone'] = this.phone;
    if (this.address != null) {
      data['address'] = this.address.toJson();
    }
    return data;
  }
}
