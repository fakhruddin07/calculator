import 'package:calculator_app/Style/style.dart';
import 'package:flutter/material.dart';

import 'Widgets/buttons.dart';

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
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
                    Text("InPut", style: Theme.of(context).textTheme.headlineLarge,),
                    const SizedBox(height: 20),
                    Text("OutPut",style: Theme.of(context).textTheme.headlineSmall,),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),

            const Divider(),

            /*Button Area*/
            const Row(
              children: [
                Buttons(
                  buttonText: "AC",
                  btnColor: operatorColor,
                  textColor: orangeColor,
                ),
                Buttons(
                  buttonText: "<",
                  btnColor: operatorColor,
                  textColor: orangeColor,
                ),
                Buttons(
                  buttonText: "",
                  btnColor: Colors.transparent,
                  textColor: colorWhite,
                ),
                Buttons(
                  buttonText: "/",
                  btnColor: operatorColor,
                  textColor: orangeColor,
                ),
              ],
            ),
            const Row(
              children: [
                Buttons(
                  buttonText: "7",
                  textColor: colorWhite,
                ),
                Buttons(
                  buttonText: "8",
                  textColor: colorWhite,
                ),
                Buttons(
                  buttonText: "9",
                  textColor: colorWhite,
                ),
                Buttons(
                  buttonText: "x",
                  btnColor: operatorColor,
                  textColor: orangeColor,
                ),
              ],
            ),
            const Row(
              children: [
                Buttons(
                  buttonText: "4",
                  textColor: colorWhite,
                ),
                Buttons(
                  buttonText: "5",
                  textColor: colorWhite,
                ),
                Buttons(
                  buttonText: "6",
                  textColor: colorWhite,
                ),
                Buttons(
                  buttonText: "-",
                  btnColor: operatorColor,
                  textColor: orangeColor,
                ),
              ],
            ),
            const Row(
              children: [
                Buttons(
                  buttonText: "1",
                  textColor: colorWhite,
                ),
                Buttons(
                  buttonText: "2",
                  textColor: colorWhite,
                ),
                Buttons(
                  buttonText: "3",
                  textColor: colorWhite,
                ),
                Buttons(
                  buttonText: "+",
                  btnColor: operatorColor,
                  textColor: orangeColor,
                ),
              ],
            ),
            const Row(
              children: [
                Buttons(
                  buttonText: "%",
                  btnColor: operatorColor,
                  textColor: orangeColor,
                ),
                Buttons(
                  buttonText: "0",
                  textColor: colorWhite,
                ),
                Buttons(
                  buttonText: ".",
                  textColor: colorWhite,
                ),
                Buttons(
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
}
