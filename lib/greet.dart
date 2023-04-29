import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Demo Home Page'),
        ),
        body: Center(
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessageScreen(message: Greet().greet('Have a good day'))),
              );
            },
            child: Text(
              'Tap here to display message',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }

  Greet() {}
}

class MessageScreen extends StatelessWidget {
  final String message;

  const MessageScreen({Key? key, required this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Message'),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}