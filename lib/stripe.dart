library appstitch_stripe;

import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:appstitch_core/core.dart';
import 'package:appstitch_stripe/types.dart';
import 'package:flutter/services.dart';
import "package:appstitch_stripe/native_stripe.dart";

class AppstitchStripe {
  Core core = Core();
  Map<String, dynamic> toJson(Base base) {
    return base.toJson();
  }

  Future<PaymentMethod> attachPaymentMethod(
      AttachPaymentMethodOpts opts) async {
    final payload = opts.toJson();

    final result = await core.makeRequst("Stripe/attachPaymentMethod", payload);

    return PaymentMethod.fromJson(result);
  }

  Future<PaymentIntent> createPaymentIntent(
      CreatePaymentIntentOpts opts) async {
    final payload = toJson(opts);

    final result = await core.makeRequst("Stripe/createPaymentIntent", payload);

    return PaymentIntent.fromJson(result);
  }

  Future<PaymentIntent> updatePaymentIntent(
      UpdatePaymentIntentOpts opts) async {
    final payload = toJson(opts);

    final result = await core.makeRequst("Stripe/updatePaymentIntent", payload);

    return PaymentIntent.fromJson(result);
  }

  Future<PaymentIntent> confirmPaymentIntent(
      CreatePaymentIntentOpts opts) async {
    final payload = toJson(opts);

    final result =
        await core.makeRequst("Stripe/confirmPaymentIntent", payload);

    return PaymentIntent.fromJson(result);
  }

  Future<PaymentIntent> cancelPaymentIntent(
      CreatePaymentIntentOpts opts) async {
    final payload = toJson(opts);

    final result = await core.makeRequst("Stripe/cancelPaymentIntent", payload);

    return PaymentIntent.fromJson(result);
  }

  Future<PaymentIntent> retrievePaymentIntent(Base opts) async {
    final payload = toJson(opts);

    final result =
        await core.makeRequst("Stripe/retrievePaymentIntent", payload);

    return PaymentIntent.fromJson(result);
  }

  Future<Customer> createCustomer(CreateCustomerOpts opts) async {
    final payload = toJson(opts);

    final result = await core.makeRequst("Stripe/createCustomer", payload);

    return Customer.fromJson(result);
  }

  Future<Customer> updateCustomer(UpdateCustomerOpts opts) async {
    final payload = toJson(opts);

    final result = await core.makeRequst("Stripe/updateCustomer", payload);

    return Customer.fromJson(result);
  }

  Future<Customer> retrieveCustomer(RetrieveOpts opts) async {
    final payload = toJson(opts);

    final result = await core.makeRequst("Stripe/retrieveCustomer", payload);

    return Customer.fromJson(result);
  }

  Future<Subscription> createSubscription(CreateSubscriptionOpts opts) async {
    final payload = toJson(opts);

    final result = await core.makeRequst("Stripe/createSubscription", payload);

    return Subscription.fromJson(result);
  }

  Future<Subscription> cancelSubscription(RetrieveOpts opts) async {
    final payload = toJson(opts);

    final result = await core.makeRequst("Stripe/cancelSubscription", payload);

    return Subscription.fromJson(result);
  }

  Future<Subscription> retrieveSubscription(RetrieveOpts opts) async {
    final payload = toJson(opts);

    final result =
        await core.makeRequst("Stripe/retrieveSubscription", payload);

    return Subscription.fromJson(result);
  }

  /// Native Stripe
  ///

  static const MethodChannel _channel = const MethodChannel('appstitch_stripe');

  /// https://tipsi.github.io/tipsi-stripe/docs/usage.html
  static void setOptions(StripeOptions settings) {
    _channel.invokeMethod('setOptions',
        {"options": settings.toJson(), "errorCodes": Errors.mapping});
  }

  /// https://tipsi.github.io/tipsi-stripe/docs/usage.html
  static void setStripeAccount(String stripeAccount) {
    _channel.invokeMethod('setStripeAccount', {"stripeAccount": stripeAccount});
  }

  /// https://tipsi.github.io/tipsi-stripe/docs/usage.html
  static Future<bool> deviceSupportsNativePay() async {
    if (kIsWeb) {
      return false;
    } else {
      if (Platform.isIOS) {
        return _deviceSupportsApplePay();
      } else if (Platform.isAndroid) {
        return _deviceSupportsAndroidPay();
      } else {
        return false;
      }
    }
  }

  /// https://tipsi.github.io/tipsi-stripe/docs/canMakeNativePayPayments.html
  static Future<bool> canMakeNativePayPayments(List<String> networks) async {
    if (kIsWeb) {
      throw UnimplementedError();
    } else {
      if (Platform.isAndroid) {
        return _channel.invokeMethod('canMakeAndroidPayPayments');
      } else if (Platform.isIOS) {
        Map<String, dynamic> options = {"networks": networks};
        return _channel.invokeMethod('canMakeAndroidPayPayments', options);
      } else
        throw UnimplementedError();
    }
  }

  static Future<bool> _deviceSupportsAndroidPay() =>
      _channel.invokeMethod("deviceSupportsAndroidPay");

  static Future<bool> _deviceSupportsApplePay() =>
      _channel.invokeMethod("deviceSupportsApplePay");

  /// https://tipsi.github.io/tipsi-stripe/docs/paymentRequestWithNativePay.html
  static Future<Token> paymentRequestWithNativePay(
      {AndroidPayOpts androidPayOptions, ApplePayOpts applePayOptions}) {
    if (kIsWeb) {
      throw UnimplementedError();
    } else {
      if (Platform.isAndroid) {
        return _paymentRequestWithAndroidPay(androidPayOptions);
      } else if (Platform.isIOS) {
        return _paymentRequestWithApplePay(applePayOptions);
      } else
        throw UnimplementedError();
    }
  }

  static Future<Token> _paymentRequestWithAndroidPay(
      AndroidPayOpts options) async {
    final token = await _channel.invokeMethod(
        "paymentRequestWithAndroidPay", options.toJson());
    return Token.fromJson(token);
  }

  static Future<Token> _paymentRequestWithApplePay(ApplePayOpts options) async {
    final token = await _channel.invokeMethod("paymentRequestWithApplePay", {
      "options": options.toJson(),
      "items": options.items.map((item) => item.toJson()).toList()
    });
    return Token.fromJson(token);
  }

  /// https://tipsi.github.io/tipsi-stripe/docs/completeNativePayRequest.html
  static Future<void> completeNativePayRequest() async {
    if (kIsWeb) {
      throw UnimplementedError();
    } else {
      if (Platform.isIOS) {
        return _channel.invokeMethod("completeApplePayRequest");
      } else if (Platform.isAndroid) {
        return null;
      } else
        throw UnimplementedError();
    }
  }

  /// https://tipsi.github.io/tipsi-stripe/docs/cancelNativePayRequest.html
  static Future<void> cancelNativePayRequest() async {
    if (kIsWeb) {
      throw UnimplementedError();
    } else {
      if (Platform.isIOS) {
        return _channel.invokeMethod("cancelApplePayRequest");
      } else if (Platform.isAndroid) {
        return null;
      } else
        throw UnimplementedError();
    }
  }

  /// https://tipsi.github.io/tipsi-stripe/docs/paymentRequestWithCardForm.html
  static Future<PaymentMethod> paymentRequestWithCardForm(
      CardFormPaymentRequest options) async {
    final token = await _channel.invokeMethod(
        "paymentRequestWithCardForm", options.toJson());
    return PaymentMethod.fromJson(token);
  }

  /// https://tipsi.github.io/tipsi-stripe/docs/createTokenWithCard.html
  static Future<Token> createTokenWithCard(CreateCardOpts card) async {
    final token =
        await _channel.invokeMethod("createTokenWithCard", card.toJson());
    return Token.fromJson(token);
  }

  /// https://tipsi.github.io/tipsi-stripe/docs/createTokenWithBankAccount.html
  static Future<Token> createTokenWithBankAccount(BankAccount options) async {
    final token = await _channel.invokeMethod(
        "createTokenWithBankAccount", options.toJson());
    return Token.fromJson(token);
  }

  /// https://tipsi.github.io/tipsi-stripe/docs/createsourcewithparamsparams.html
  static Future<Source> createSourceWithParams(CreateSourceOpts options) async {
    final source =
        await _channel.invokeMethod("createSourceWithParams", options.toJson());
    return Source.fromJson(source);
  }

  /// https://tipsi.github.io/tipsi-stripe/docs/createPaymentMethod.html
  static Future<PaymentMethodResult> createPaymentMethod(
      PaymentMethodRequest request) async {
    final paymentMethod =
        await _channel.invokeMethod("createPaymentMethod", request.toJson());

    return PaymentMethodResult.fromJson(paymentMethod);
  }

  /// https://tipsi.github.io/tipsi-stripe/docs/authenticatePaymentIntent.html
  static Future<PaymentIntentResult> authenticatePaymentIntent(
      {@required String clientSecret}) async {
    assert(clientSecret != null);
    final result = await _channel.invokeMethod(
        'authenticatePaymentIntent', {"clientSecret": clientSecret});
    return PaymentIntentResult.fromJson(result);
  }

  /// https://tipsi.github.io/tipsi-stripe/docs/authenticateSetupIntent.html
  static Future<SetupIntentResult> authenticateSetupIntent(
      {@required String clientSecret}) async {
    assert(clientSecret != null);
    final result = await _channel.invokeMethod(
        'authenticateSetupIntent', {"clientSecret": clientSecret});
    return SetupIntentResult.fromJson(result);
  }

  /// https://tipsi.github.io/tipsi-stripe/docs/confirmSetupIntent.html
  static Future<SetupIntentResult> confirmSetupIntent(
      PaymentIntent intent) async {
    assert(intent.clientSecret != null);
    assert(intent.paymentMethod != null);
    final result =
        await _channel.invokeMethod('confirmSetupIntent', intent.toJson());
    return SetupIntentResult.fromJson(result);
  }
}

class StripeOptions {
  final String publishableKey;
  final String merchantId;
  final String androidPayMode;

  StripeOptions(
      {@required this.publishableKey, this.merchantId, this.androidPayMode});

  factory StripeOptions.fromJson(Map<String, dynamic> json) {
    return StripeOptions(
        merchantId: json['merchantId'],
        publishableKey: json['publishableKey'],
        androidPayMode: json['androidPayMode']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.merchantId != null) data['merchantId'] = this.merchantId;
    if (this.publishableKey != null)
      data['publishableKey'] = this.publishableKey;
    if (this.androidPayMode != null)
      data['androidPayMode'] = this.androidPayMode;
    return data;
  }
}
