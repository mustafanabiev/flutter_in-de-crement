import 'package:flutter/material.dart';
import 'second_screen.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text(
              "Тапшырма 01",
              style: TextStyle(color: Colors.black, fontSize: 18),
            )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: SizedBox(
                  width: 300,
                  height: 48,
                  child: RaisedButton(
                    onPressed: () {
                      // Navigator.pushNamed(context, "/second");
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SecondScreen(
                            counter: _counter,
                          ),
                        ),
                      );
                    },
                    color: Color(0xFF46F3F3),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    child: Text(
                      'сан: $_counter',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: SizedBox(
                    width: 75,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        _decrementCounter();
                      },
                      color: Color(0xFF005EA6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Icon(Icons.remove),
                      textColor: Colors.white,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(15.0),
                  child: SizedBox(
                    width: 75,
                    height: 50,
                    child: RaisedButton(
                      onPressed: () {
                        _incrementCounter();
                      },
                      color: Color(0xFF005EA6),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Icon(Icons.add),
                      textColor: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        )

        // Бул Footer
        // bottomNavigationBar: ,

        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
