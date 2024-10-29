import 'package:flutter/material.dart';
import 'package:kalkulator/color.dart';

class MyCalculator extends StatefulWidget {
  const MyCalculator({super.key});

  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Tampilan total
              Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "0",
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 100, color: Colors.white),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  numberSymbolButton(Colors.grey[350]!, "AC", Colors.black87),
                  numberSymbolButton(Colors.grey[350]!, "+/-", Colors.black87),
                  numberSymbolButton(Colors.grey[350]!, "%", Colors.black87),
                  numberSymbolButton(symbolBgColor, "/", Colors.black87),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  numberSymbolButton(numberBgColor, "7", Colors.black87),
                  numberSymbolButton(numberBgColor, "8", Colors.black87),
                  numberSymbolButton(numberBgColor, "9", Colors.black87),
                  numberSymbolButton(symbolBgColor, "x", Colors.black87),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  numberSymbolButton(numberBgColor, "4", Colors.black87),
                  numberSymbolButton(numberBgColor, "5", Colors.black87),
                  numberSymbolButton(numberBgColor, "6", Colors.black87),
                  numberSymbolButton(symbolBgColor, "-", Colors.black87),
                ],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  numberSymbolButton(numberBgColor, "1", Colors.black87),
                  numberSymbolButton(numberBgColor, "2", Colors.black87),
                  numberSymbolButton(numberBgColor, "3", Colors.black87),
                  numberSymbolButton(symbolBgColor, "+", Colors.black87),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget numberSymbolButton(
    Color bgColor,
    String text,
    Color textColor,
  ) {
    return GestureDetector(
      child: Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: bgColor,
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
