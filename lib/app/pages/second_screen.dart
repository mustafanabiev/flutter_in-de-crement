import 'package:flutter/material.dart';

import '../constants/app_text/app_text.dart';
import '../widgets/calculatorbtn.dart';

class SecondScreen extends StatelessWidget {
  final int? counter;
  // ignore: use_key_in_widget_constructors
  const SecondScreen({this.counter});

  @override
  Widget build(BuildContext context) {
    final string = AppString.instance;
    return Scaffold(
      appBar: AppBar(
        title: Text(string.secondAppBarTitle),
      ),
      body: Center(
        child: CalculatorBtn(
          counter: counter!,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
