library appstitch_stripe;

import 'package:appstitch_core/core.dart';
import 'package:appstitch_stripe/types.dart';

class AppstitchStripe {
  Core core = Core();

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
}
