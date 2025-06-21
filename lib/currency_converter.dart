import 'package:flutter/material.dart';

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});

  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();

  void convertCurrency() {
    final text = textEditingController.text;
    if (text.isEmpty) return;

    try {
      final usdAmount = double.parse(text);
      setState(() {
        result = usdAmount * 0.85;
      });
    } catch (e) {
      setState(() {
        result = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Color.fromRGBO(56, 100, 221, 0.5),
        strokeAlign: BorderSide.strokeAlignCenter,
      ),
      borderRadius: BorderRadius.circular(30),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
      appBar: AppBar(
        title: Text(
          "Currency Converter App",
          style: TextStyle(color: Color.fromRGBO(56, 100, 221, 1)),
        ),
        centerTitle: true,
        backgroundColor: Color.fromARGB(56, 22, 34, 48),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "USD to INR Converter",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(56, 100, 221, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: TextStyle(color: Color.fromARGB(255, 217, 255, 0)),
                decoration: InputDecoration(
                  hintText: "amount in USD",
                  prefixIcon: Icon(
                    Icons.monetization_on_sharp,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(99, 78, 67, 124),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            TextButton(
              onPressed: convertCurrency,
              style: ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Colors.white),
              ),
              child: Text("Convert"),
            ),
            Text(
              '₹${result.toStringAsFixed(2)}',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(56, 100, 221, 1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
