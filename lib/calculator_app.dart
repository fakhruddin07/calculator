import 'dart:developer';

import 'package:calculator_app/Style/style.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  String input = "";
  String outPut = "";
  bool isInput = false;

  onChangeButton(value) {
    log(value.toString());
    if (value == "AC") {
      input = 0.toString();
      outPut = 0.toString();
    } else if (value == "<") {
      if (input.isNotEmpty) {
        input = input.substring(0, input.length - 1);
      }
      log(input.length.toString());
    } else if (value == "=") {
      if (input.isNotEmpty) {
        String userInput = input.replaceAll("x", "*");
        //userInput =
        Parser p = Parser();
        Expression expression = p.parse(userInput);
        ContextModel cm = ContextModel();
        double finalResult = expression.evaluate(EvaluationType.REAL, cm);
        outPut = finalResult.toString();
        if (outPut.endsWith(".0")) {
          outPut = outPut.substring(0, outPut.length - 2);
        }
        input = outPut;
        isInput = true;
      }
    } else {
      input = input + value;
      isInput = false;
    }
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBlack,
      body: SafeArea(
        child: Column(
          children: [
            /*Input Output Area*/
            Expanded(
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      isInput ? "" : input,
                      style: Theme.of(context).textTheme.headlineLarge,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      outPut,
                      style: Theme.of(context).textTheme.headlineSmall,
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
            const Divider(),

            /*Button Area*/
            Row(
              children: [
                calculatorButtons(
                  buttonText: "AC",
                  btnColor: operatorColor,
                  textColor: orangeColor,
                ),
                calculatorButtons(
                  buttonText: "<",
                  btnColor: operatorColor,
                  textColor: orangeColor,
                ),
                calculatorButtons(
                  buttonText: "%",
                  btnColor: operatorColor,
                  textColor: orangeColor,
                ),
                calculatorButtons(
                  buttonText: "/",
                  btnColor: operatorColor,
                  textColor: orangeColor,
                ),
              ],
            ),
            Row(
              children: [
                calculatorButtons(
                  buttonText: "7",
                  textColor: colorWhite,
                ),
                calculatorButtons(
                  buttonText: "8",
                  textColor: colorWhite,
                ),
                calculatorButtons(
                  buttonText: "9",
                  textColor: colorWhite,
                ),
                calculatorButtons(
                  buttonText: "x",
                  btnColor: operatorColor,
                  textColor: orangeColor,
                ),
              ],
            ),
            Row(
              children: [
                calculatorButtons(
                  buttonText: "4",
                  textColor: colorWhite,
                ),
                calculatorButtons(
                  buttonText: "5",
                  textColor: colorWhite,
                ),
                calculatorButtons(
                  buttonText: "6",
                  textColor: colorWhite,
                ),
                calculatorButtons(
                  buttonText: "-",
                  btnColor: operatorColor,
                  textColor: orangeColor,
                ),
              ],
            ),
            Row(
              children: [
                calculatorButtons(
                  buttonText: "1",
                  textColor: colorWhite,
                ),
                calculatorButtons(
                  buttonText: "2",
                  textColor: colorWhite,
                ),
                calculatorButtons(
                  buttonText: "3",
                  textColor: colorWhite,
                ),
                calculatorButtons(
                  buttonText: "+",
                  btnColor: operatorColor,
                  textColor: orangeColor,
                ),
              ],
            ),
            Row(
              children: [
                calculatorButtons(
                  buttonText: "00",
                  textColor: colorWhite,
                ),
                calculatorButtons(
                  buttonText: "0",
                  textColor: colorWhite,
                ),
                calculatorButtons(
                  buttonText: ".",
                  textColor: colorWhite,
                ),
                calculatorButtons(
                  buttonText: "=",
                  btnColor: orangeColor,
                  textColor: colorWhite,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Expanded calculatorButtons({btnColor, buttonText, textColor}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: btnColor ?? buttonColor,
              padding: const EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
          onPressed: () => onChangeButton(buttonText),
          child: Text(
            buttonText,
            style: buttonBodyText(textColor),
          ),
        ),
      ),
    );
  }
}
