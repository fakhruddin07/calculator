import 'package:flutter/material.dart';

import '../Style/style.dart';

class Buttons extends StatelessWidget {
  final String buttonText;
  final Color? btnColor;
  final Color textColor;
  const Buttons({
    super.key,
    required this.buttonText,
    this.btnColor,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
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
          onPressed: () {},
          child: Text(
            buttonText,
            style: buttonBodyText(textColor),
          ),
        ),
      ),
    );
  }
}
