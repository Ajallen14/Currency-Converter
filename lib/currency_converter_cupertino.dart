import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertino extends StatefulWidget {
  const CurrencyConverterCupertino({super.key});

  @override
  State<CurrencyConverterCupertino> createState() =>
      _CurrencyConverterCupertinoState();
}

class _CurrencyConverterCupertinoState
    extends State<CurrencyConverterCupertino> {
  double result = 0;
  TextEditingController textEditingController = TextEditingController();

  void convertCurrency() {
    final text = textEditingController.text;
    if (text.isEmpty) return;

    try {
      final usdAmount = double.parse(text);
      setState(() {
        result = usdAmount * 83.2;
      });
    } catch (e) {
      setState(() {
        result = 0;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      navigationBar: const CupertinoNavigationBar(
        middle: Text(
          "Currency Converter App",
          style: TextStyle(color: Color.fromRGBO(56, 100, 221, 1)),
        ),
        backgroundColor: Color.fromARGB(56, 22, 34, 48),
      ),
      child: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "USD to INR Converter",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(56, 100, 221, 1),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  placeholder: 'Amount in USD',
                  prefix: const Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Icon(CupertinoIcons.money_dollar),
                  ),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                  padding: const EdgeInsets.all(12),
                ),
              ),
              CupertinoButton.filled(
                onPressed: convertCurrency,
                child: const Text("Convert"),
              ),
              const SizedBox(height: 20),
              Text(
                '₹ ${result.toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(56, 100, 221, 1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
