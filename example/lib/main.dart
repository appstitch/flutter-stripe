import 'package:appstitch_core/options.dart';
import 'package:appstitch_core/core.dart';
import 'package:appstitch_stripe/native_stripe/card_form_payment_request.dart';
import 'package:appstitch_stripe/types.dart';
import 'package:appstitch_stripe/stripe.dart';
import 'package:appstitch_stripe/types/androidPayLineItem.dart';
import 'package:appstitch_stripe/types/androidPayOpts.dart';
import 'package:appstitch_stripe/types/applePayLineItem.dart';
import 'package:appstitch_stripe/types/applePayOpts.dart';
import 'package:appstitch_stripe/types/cardFormPaymentRequest.dart';
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
  Customer customer;
  String customerID = "";
  String paymentMethodID = "";
  Subscription subscription;
  String subscriptionID = "";
  String paymentIntentID = "";
  Core core = Core();
  bool loading = false;
  bool allowNativePay = false;

  CreateCardOpts testCard =
      CreateCardOpts(number: "4242424242424242", expMonth: 04, expYear: 2024);
  AppstitchStripe stripe = AppstitchStripe();

  @override
  void initState() {
    super.initState();
    final config = Options(
        appStitchKey: "645ffc0f-cbc2-57f2-bb8c-dc7790b1208b",
        clientID: "5fe15fe825eb49001517dd44");
    core.initialize(config);

    AppstitchStripe.setOptions(StripeOptions(
        publishableKey: "pk_test_b6RhyVTf8GURO4niBnDR1V6200WVfBxeqH",
        merchantId: "merchant.uk.freshlygroundapps",
        androidPayMode: 'test'));
    core.setAuthToken("token");

    AppstitchStripe.deviceSupportsNativePay().then((value) {
      allowNativePay = true;
      setState(() {});
    }, onError: (error) {
      print(error);
    });
  }

// UI

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
    customerOpts.blueprintId = "qaz";
    final _customer = await stripe.createCustomer(customerOpts);

    setState(() {
      customer = _customer;
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

    final _paymentMethod =
        await stripe.attachPaymentMethod(paymentMethodResult.id, customerID);

    // Step 3. Set payment method as default;

    final updatedCustomer = await stripe
        .updateCustomer(UpdateCustomerOpts(paymentMethod: _paymentMethod.id));

    setState(() {
      paymentMethodID = _paymentMethod.id;
    });
    stopSpinner();
  }

  void _createSubscription() async {
    startSpinner();
    final subItems = [
      SubscriptionItemOpts(price: "price_1IN28vG6VuHF9Dp26Wmj8IOu")
    ];
    final subscriptionOpts =
        CreateSubscriptionOpts(customer: customerID, items: subItems);

    subscription = await stripe.createSubscription(subscriptionOpts);

    print(subscription.toJson());
    if (subscription.object == "subscription") {
      setState(() {
        subscriptionID = subscription.id;
      });
      showMessage("Subscription Created!");
    } else {
      showMessage("${subscription.stripeError}");
      stopSpinner();
    }
  }

  void _createSubscriptionWithBlueprint() async {
    startSpinner();
    final subscriptionOpts = CreateSubscriptionOpts(customer: customerID);

    subscriptionOpts.blueprintId = "pro_tier";

    subscription = await stripe.createSubscription(subscriptionOpts);

    if (subscription.object == "subscription") {
      setState(() {
        subscriptionID = subscription.id;
      });

      showMessage("Subscription Created");
    } else {
      showMessage("${subscription.stripeError}");
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
      showMessage("${paymentIntent.stripeError}");
    }
    stopSpinner();
  }

  void _payWithNativePay() async {
    startSpinner();

    final applePayItems = [
      ApplePayLineItem(
        label: 'Item Price',
        amount: 25.toString(),
      ),
      ApplePayLineItem(
        label: 'Total Price',
        amount: 25.toString(),
      )
    ];

    final applePayOpts =
        ApplePayOpts(items: applePayItems, currencyCode: "usd");
    final result = await AppstitchStripe.paymentRequestWithNativePay(
        androidPayOptions: AndroidPayOpts(
            totalPrice: "25",
            currencyCode: "usd",
            lineItems: [
              AndroidPayLineItem(totalPrice: "25", currencyCode: "usd")
            ]),
        applePayOptions: applePayOpts);

    // setState(() {
    //   paymentIntentID = paymentIntent.id;
    // });
    stopSpinner();
    showMessage("Payment Intent Created");
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
                  'Create a customer: ${customerID}',
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
                child: Text("Premium membership"),
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
