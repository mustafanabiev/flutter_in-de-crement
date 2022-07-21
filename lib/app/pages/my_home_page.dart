import 'package:flutter/material.dart';
import '../constants/app_text/app_text.dart';
import '../widgets/calculatorbtn.dart';
import '../widgets/elevatedbtn.dart';
import 'second_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
      if (_counter < 0) {
        _counter++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final string = AppString.instance;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          string.appBarTitle,
          style: const TextStyle(color: Colors.black, fontSize: 18),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CalculatorBtn(
            counter: _counter,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SecondScreen(
                    counter: _counter,
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedBtn(
                icon: const Icon(Icons.remove),
                onPressed: () {
                  _decrementCounter();
                },
              ),
              const SizedBox(width: 30),
              ElevatedBtn(
                icon: const Icon(Icons.add),
                onPressed: () {
                  _incrementCounter();
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
