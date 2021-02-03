library stripe;

import 'package:appstitch_core/core.dart';
import 'package:stripe/types/base.dart';
import 'package:stripe/types/createCustomerOpts.dart';
import 'package:stripe/types/createPaymentIntentOpts.dart';
import 'package:stripe/types/customer.dart';

import 'package:stripe/types/paymentIntent.dart';
import 'package:stripe/types/retrieveOpts.dart';
import 'package:stripe/types/updateCustomerOpts.dart';
import 'package:stripe/types/updatePaymentIntentOpts.dart';

class AppstitchStripe {
  Core core = Core();
  int takePayment(int payloadue) {
    return 6;
  }

  Map<String, dynamic> toJson(Base base) {
    return base.toJson();
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
}
