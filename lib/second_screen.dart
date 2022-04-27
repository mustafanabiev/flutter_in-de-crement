import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final int counter;
  SecondScreen({this.counter});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Container(
          child: SizedBox(
              width: 300,
              height: 48,
              child: RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                color: Color(0xFF46F3F3),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                child: Text(
                  'сан: ${counter.toString()}',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              )),
        ),
      ),
    );
  }
}
