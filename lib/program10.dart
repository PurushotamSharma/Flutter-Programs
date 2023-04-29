import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _currentSliderValue = 1;

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Out of Range'),
          content: Text('The value cannot be greater than 5.'),
          actions: [
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Slider'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Value of Slider:',
              ),
              Text(
                '$_currentSliderValue',
                style: Theme.of(context).textTheme.headline4,
              ),
              Slider(
                value: _currentSliderValue,
                min: 1,
                max: 5,
                divisions: 4,
                label: _currentSliderValue.round().toString(),
                onChanged: (double value) {
                  setState(() {
                    _currentSliderValue = value;
                    if (_currentSliderValue == 5) {
                      throw OutOfRangeException();
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OutOfRangeException implements Exception {
  String errorMessage() {
    return 'The value cannot be greater than 5.';
  }
}