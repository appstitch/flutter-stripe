import 'package:appstitch_core/options.dart';
import 'package:appstitch_core/core.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:stripe/stripe.dart';
import 'package:stripe/types/createPaymentIntentOpts.dart';

void main() {
  final core = Core();
  final config = Options(
      appStitchKey: "645ffc0f-cbc2-57f2-bb8c-dc7790b1208b",
      clientID: "5fe15fe825eb49001517dd44");
  core.initialize(config);
  final stripe = AppstitchStripe();

  test('Create Payment Intent', () async {
    final paymentIntentOpts = CreatePaymentIntentOpts(
      amount: 100,
    );
    final paymentIntent = await stripe.createPaymentIntent(paymentIntentOpts);
  });
}
