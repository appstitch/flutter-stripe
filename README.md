# Appstitch Stripe

Serverless Stripe Integrations for Appstitch

## Platforms

- iOS
- Android

## Usage

### Create a customer

```
final customerOpts = CreateCustomerOpts(email: "test@example.com");
final _customer = await stripe.createCustomer(customerOpts);
```

### Create a Subscription

```
final subscriptionItems = [SubscriptionItemOpts(price: "price_abc123")];

final subscriptionOpts = CreateSubscriptionOpts(customer: "cus_abc123", items: subscriptionItems);

subscription = await stripe.createSubscription(subscriptionOpts);

```

### Create a PaymentIntent

```
final paymentIntentOpts = CreatePaymentIntentOpts(
        currency: "usd",
        amount: 2500,
        confirm: true,
        customer: "customerID");

final paymentIntent = await stripe.createPaymentIntent(paymentIntentOpts);

```

With Apple Pay or Android Pay

```
final paymentIntentOpts = CreatePaymentIntentOpts(
      currency: "usd",
      amount: 2500,
      confirm: true,
      paymentMethodData: PaymentMethodData(
          card: CreateCardOpts(token: token.tokenId), type: "card"),
    );

final paymentIntent = await stripe.createPaymentIntent(paymentIntentOpts);

```

---

### Blueprints

Blueprints abstract literals away from client side code. Set up blueprints on the [dashboard](https://connect.appstitch.dev) to avoid fetching master data (e.g. Stripe prices). All blueprint properties can overwritten by your flutter client.

It's easier to update blueprints oposed pushing new releases.

An example:

The "pro_tier_sale" blueprint sets the items and coupon for the subscription. The client side is cleaner since you just set the customerID

```
final subscriptionOpts = CreateSubscriptionOpts(customer: customerID);

subscriptionOpts.blueprintId = "pro_tier_sale";

subscription = await stripe.createSubscription(subscriptionOpts);

```

Best Practice : Start with very broad blueprints and refine them as you go.

---

Update `Podfile` platform

```
platform :ios, '10.0'
```

### Install

```
appstitch_core: ^2.0.1-nullsafety.1
appstitch_stripe: ^2.0.1-nullsafety.1
```

### Initialize

```
import 'package:appstitch_core/core.dart';
import 'package:appstitch_stripe/stripe.dart';


Core core = Core();

@override
void initState() {
  super.initState();

  final options = Options(appstitchKey, clientID: clientID);
  core.initialize(options);

}
```

### Notes

The foundations for this library is from [flutter_stripe_payment](https://github.com/jonasbark/flutter_stripe_payment) and [tipsi-stripe](https://github.com/tipsi/tipsi-stripe)

Create a free Appstitch account [here](https://connect.appstitch.dev)

View [walkthrough](https://appstitch.medium.com/flutter-how-to-integrate-stripe-using-appstitch-811990d0cd03) here
