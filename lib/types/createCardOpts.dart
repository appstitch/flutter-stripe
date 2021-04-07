class CreateCardOpts {
  String? addressCity;
  String? addressCountry;
  String? addressLine1;
  String? addressLine2;
  String? addressState;
  String? addressZip;
  String? brand;
  String? cardId;
  String? country;
  String? currency;
  int? expMonth;
  int? expYear;
  String? funding;
  String? last4;
  String? name;
  String? number;
  String? cvc;
  String? token;

  CreateCardOpts(
      {this.addressCity,
      this.addressCountry,
      this.addressLine1,
      this.addressLine2,
      this.addressState,
      this.addressZip,
      this.brand,
      this.cardId,
      this.currency,
      this.country,
      this.expMonth,
      this.expYear,
      this.number,
      this.token,
      this.cvc,
      this.funding,
      this.last4,
      this.name});

  factory CreateCardOpts.fromJson(Map<dynamic, dynamic> json) {
    return CreateCardOpts(
        addressCity: json['addressCity'],
        addressCountry: json['addressCountry'],
        addressLine1: json['addressLine1'],
        addressLine2: json['addressLine2'],
        addressState: json['addressState'],
        addressZip: json['addressZip'],
        brand: json['brand'],
        cardId: json['cardId'],
        currency: json['currency'],
        country: json['country'],
        expMonth: json['expMonth'],
        expYear: json['expYear'],
        funding: json['funding'],
        last4: json['last4'],
        name: json['name'],
        cvc: json['cvc'],
        number: json['number'],
        token: json['token']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.addressCity != null) data['addressCity'] = this.addressCity;
    if (this.addressCountry != null)
      data['addressCountry'] = this.addressCountry;
    // data['addressLine1'] = this.addressLine1;
    // data['addressLine2'] = this.addressLine2;
    if (this.addressState != null) data['addressState'] = this.addressState;
    if (this.addressZip != null) data['addressZip'] = this.addressZip;
    if (this.brand != null) data['brand'] = this.brand;
    if (this.cardId != null) data['cardId'] = this.cardId;
    if (this.country != null) data['country'] = this.country;
    if (this.expMonth != null) data['expMonth'] = this.expMonth;
    if (this.expYear != null) data['expYear'] = this.expYear;
    if (this.funding != null) data['funding'] = this.funding;
    if (this.currency != null) data['currency'] = this.currency;
    // data['last4'] = this.last4;
    if (this.name != null) data['name'] = this.name;
    if (this.number != null) data['number'] = this.number;
    if (this.cvc != null) data['cvc'] = this.cvc;
    if (this.token != null) data['token'] = this.token;
    return data;
  }
}
