import 'package:appstitch_core/options.dart';
import 'package:appstitch_core/core.dart';
import 'package:appstitch_stripe/types.dart';
import 'package:appstitch_stripe/stripe.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Appstitch Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Stripe Sample'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  /// TODO
  // Appstitch
  final String appstitchKey = "";
  final String clientID = "";
  final String blueprintID = "pro_tier"; // Optional
  // Stripe
  final String publishableKey = "";

  final String merchantId = ""; // Required for Apple Pay only
  final String androidPayMode = "test"; // Required for Android Pay only
  final String priceID = ""; // Required to create a subscription only

  ///

  CreateCardOpts testCard =
      CreateCardOpts(number: "4242424242424242", expMonth: 04, expYear: 2024);

  Customer customer;
  String customerID = "";
  String paymentMethodID = "";
  Subscription subscription;
  String subscriptionID = "";
  String paymentIntentID = "";
  Core core = Core();
  bool loading = false;
  bool allowNativePay = false;

  AppstitchStripe stripe = AppstitchStripe();

  @override
  void initState() {
    super.initState();
    final config = Options(appStitchKey: appstitchKey, clientID: clientID);
    core.initialize(config);

    AppstitchStripe.setOptions(StripeOptions(
        publishableKey: publishableKey,
        merchantId: merchantId,
        androidPayMode: 'test'));
    core.setAuthToken("token");

    AppstitchStripe.deviceSupportsNativePay().then((value) {
      allowNativePay = true;
      setState(() {});
    });
  }

  void showMessage(String message) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 1),
    ));
  }

  void startSpinner() {
    setState(() {
      loading = true;
    });
  }

  void stopSpinner() {
    setState(() {
      loading = false;
    });
  }

  void _createCustomer() async {
    startSpinner();
    final customerOpts = CreateCustomerOpts(email: "test@example.com");
    final _customer = await stripe.createCustomer(customerOpts);

    setState(() {
      customerID = _customer.id;
    });
    stopSpinner();
    showMessage("Customer Created");
  }

  void _createPaymentMethod() async {
    startSpinner();
    // Step 1 Create a card

    final cardOpts = PaymentMethodRequest(card: testCard);

    final paymentMethodResult =
        await AppstitchStripe.createPaymentMethod(cardOpts);

    // Step 2 Attach card to customer

    final _paymentMethod = await stripe.attachPaymentMethod(
        AttachPaymentMethodOpts(
            id: paymentMethodResult.id,
            customer: customerID,
            setDefault: true));
    setState(() {
      paymentMethodID = _paymentMethod.id;
    });
    stopSpinner();
  }

  void _createSubscription() async {
    startSpinner();
    final subItems = [SubscriptionItemOpts(price: priceID)];
    final subscriptionOpts =
        CreateSubscriptionOpts(customer: customerID, items: subItems);

    subscription = await stripe.createSubscription(subscriptionOpts);

    if (subscription.object == "subscription") {
      setState(() {
        subscriptionID = subscription.id;
      });
      showMessage("Subscription Created!");
    } else {
      showMessage("${subscription.message}");
    }
    stopSpinner();
  }

  void _createSubscriptionWithBlueprint() async {
    startSpinner();
    final subscriptionOpts = CreateSubscriptionOpts(customer: customerID);

    subscriptionOpts.blueprintId = blueprintID;

    subscription = await stripe.createSubscription(subscriptionOpts);

    if (subscription.object == "subscription") {
      setState(() {
        subscriptionID = subscription.id;
      });

      showMessage("Subscription Created");
    } else {
      showMessage("${subscription.message}");
    }
    stopSpinner();
  }

  void _createPaymentIntent() async {
    final paymentIntentOpts = CreatePaymentIntentOpts(
        currency: "usd",
        amount: 2500,
        confirm: true,
        customer: customerID,
        paymentMethod: paymentMethodID);

    final paymentIntent = await stripe.createPaymentIntent(paymentIntentOpts);

    if (paymentIntent.object == "payment_intent") {
      setState(() {
        paymentIntentID = paymentIntent.id;
      });

      showMessage("Payment Intent Created");
    } else {
      showMessage("${paymentIntent.message}");
    }
    stopSpinner();
  }

  void _payWithNativePay() async {
    startSpinner();

    // Set up Apple Pay options
    final applePayItems = [
      ApplePayLineItem(
        label: 'Crypto (BTC)',
        amount: 25.toString(),
      ),
      ApplePayLineItem(
        label: 'Total Price',
        amount: 25.toString(),
      )
    ];

    final applePayOpts =
        ApplePayOpts(items: applePayItems, currencyCode: "usd");

    // Set up Android Pay Options
    final androidPayOptions = AndroidPayOpts(
        totalPrice: "25",
        currencyCode: "usd",
        lineItems: [AndroidPayLineItem(totalPrice: "25", currencyCode: "usd")]);

    // Recieve token from Apple/Android Pay
    final token = await AppstitchStripe.paymentRequestWithNativePay(
        androidPayOptions: androidPayOptions, applePayOptions: applePayOpts);

    // Cretea and confirm payment intent with token
    final paymentIntentOpts = CreatePaymentIntentOpts(
      currency: "usd",
      amount: 2500,
      confirm: true,
      paymentMethodData: PaymentMethodData(
          card: CreateCardOpts(token: token.tokenId), type: "card"),
    );

    final paymentIntent = await stripe.createPaymentIntent(paymentIntentOpts);

    if (paymentIntent.object == "payment_intent") {
      setState(() {
        paymentIntentID = paymentIntent.id;
      });

      showMessage("Payment Intent Created");
    } else {
      showMessage("${paymentIntent.message}");
    }
    stopSpinner();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  'Create a customer: $customerID',
                  style: Theme.of(context).textTheme.bodyText1,
                )),
            ElevatedButton(
              child: Text("Sign up"),
              onPressed: _createCustomer,
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  'Create a card: $paymentMethodID',
                  style: Theme.of(context).textTheme.bodyText1,
                )),
            ElevatedButton(
              child: Text("Save card"),
              onPressed: _createPaymentMethod,
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 4.0),
                child: Text(
                  'Create a subscription: $subscriptionID',
                  style: Theme.of(context).textTheme.bodyText1,
                )),
            ButtonBar(alignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                child: Text("Basic membership"),
                onPressed: _createSubscription,
              ),
              ElevatedButton(
                child: Text("Pro membership"),
                onPressed: _createSubscriptionWithBlueprint,
              )
            ]),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 2.0),
                child: Text(
                  'Create a payment intent: $paymentIntentID',
                  style: Theme.of(context).textTheme.bodyText1,
                )),
            ButtonBar(alignment: MainAxisAlignment.center, children: [
              ElevatedButton(
                child: Text("Pay with payment method"),
                onPressed: _createPaymentIntent,
              ),
              Visibility(
                  visible: allowNativePay,
                  child: ElevatedButton(
                    child: Text("Pay with Native Pay"),
                    onPressed: _payWithNativePay,
                  ))
            ]),
            Visibility(
              visible: loading,
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
