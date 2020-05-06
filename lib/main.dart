import 'package:calculator/DataPicker.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
      MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Center(
                child: Text(
                  'Calculator',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            body: Calculator(),
        ),
      ),
  );
}


class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String toshow='';
  DataPicker d=new DataPicker();
  Expanded row(String value1, String value2, String value3, String value4) {
    return Expanded(
      child: Row(
        children: <Widget>[
          button('$value1'),
          button('$value2'),
          button('$value3'),
          button('$value4')
        ],
      ),
    );
  }

  Expanded button(String value) {
    return Expanded(
      child: Container(
        child: FlatButton(
          onPressed: () {
            setState(() {
              toshow=d.validating(value);
            });
            print('$value');
          },
          child: Center(
            child: Text(
              '$value',
              style: TextStyle(color: Colors.orange),
            ),
          ),
        ),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              child: Center(
                child: Text(
                    '$toshow',
                    style: TextStyle(color: Colors.orange),
                ),
              ),
              color: Colors.black,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.black87,
              child: Column(
                children: <Widget>[
                  row('C', 'DEL', '%', '/'),
                  row('7', '8', '9', '*'),
                  row('4', '5', '6', '-'),
                  row('1', '2', '3', '+'),
                  row('X', '0', '.', '='),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



