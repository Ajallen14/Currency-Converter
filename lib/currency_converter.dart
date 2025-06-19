import 'package:flutter/material.dart';

class CurrencyConverter extends StatelessWidget {
  const CurrencyConverter({super.key});

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
      backgroundColor: Color.fromARGB(0, 0, 0, 1),
      appBar: AppBar(
        title: Text(
          "Currency Converter App",
          style: TextStyle(color: Color.fromRGBO(56, 100, 221, 1)),
        ),
        backgroundColor: Color.fromARGB(56, 22, 34, 48),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Currency Converter",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(56, 100, 221, 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: TextField(
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
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStatePropertyAll(Colors.white),
              ),
              child: Text("Convert"),
            ),
          ],
        ),
      ),
    );
  }
}
