import 'package:flutter/material.dart';

import '../constants/app_text/app_text.dart';

class CalculatorBtn extends StatelessWidget {
  final Function()? onPressed;
  const CalculatorBtn({
    Key? key,
    required int counter,
    this.onPressed,
  })  : _counter = counter,
        super(key: key);

  final int _counter;

  @override
  Widget build(BuildContext context) {
    final string = AppString.instance;
    return SizedBox(
      width: 300,
      height: 48,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color(0xFF46F3F3),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
        child: Text(
          '${string.counterTitle} $_counter',
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
