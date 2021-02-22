import 'package:appstitch_core/options.dart';
import 'package:appstitch_core/core.dart';
import 'package:appstitch_stripe/types.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:appstitch_stripe/stripe.dart';

void main() {
  final core = Core();
  final config = Options(appStitchKey: "key", clientID: "client");
  core.initialize(config);

  core.setAuthToken("token");
  final stripe = AppstitchStripe();

  test('Create Customer', () async {
    final customerOpts = CreateCustomerOpts(email: "email@example.com");

    final customer = await stripe.createCustomer(customerOpts);
    if (customer.object == "customer") {
      // success
    }
  });

  test('Create Payment Intent', () async {
    final paymentIntentOpts = CreatePaymentIntentOpts(
        customer: "cus_abc123",
        amount: 2500, // $25
        currency: "usd",
        confirm: true,
        receiptEmail: "customer@example.com");
    final paymentIntent = await stripe.createPaymentIntent(paymentIntentOpts);

    if (paymentIntent.object == "payment_intent") {
      // success
    }
  });

  test('Create subscription', () async {
    final subscriptionOpts = CreateSubscriptionOpts(
      customer: "cus_ABC123456",
      items: [SubscriptionItemOpts(price: "price_XYZ123456")],
    );

    final subscription = await stripe.createSubscription(subscriptionOpts);

    if (subscription.object == "subsription") {
      // success
    }
  });
}
