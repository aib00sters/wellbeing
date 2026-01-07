import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:http/http.dart' as http;

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool loading = false;

  Future<void> makePayment() async {
    try {
      setState(() => loading = true);

      // 1️⃣ CALL BACKEND API to get clientSecret
      final response = await http.post(
        Uri.parse("https://myndboosters.com/api/v1/m/create-payment-intent"),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"amount": 100}), // send amount or orderId
      );

      final result = jsonDecode(response.body);
      final clientSecret = result["clientSecret"];

      // 2️⃣ INITIALIZE STRIPE PAYMENT SHEET
      await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          paymentIntentClientSecret: clientSecret,
          merchantDisplayName: "Wellbeing App",
          style: ThemeMode.light,
        ),
      );

      setState(() => loading = false);

      // 3️⃣ PRESENT STRIPE UI (PaymentSheet)
      await Stripe.instance.presentPaymentSheet();

      // 4️⃣ SUCCESS
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Payment Successful")),
      );
    } catch (e) {
      setState(() => loading = false);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Payment failed: $e")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stripe Payment")),
      body: Center(
        child: loading
            ? const CircularProgressIndicator()
            : ElevatedButton(
                onPressed: makePayment,
                child: const Text("Pay Amount"),
              ),
      ),
    );
  }
}
