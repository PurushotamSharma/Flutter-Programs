import 'package:flutter/material.dart';
import 'package:flutter_programs/greet.dart';
void main() {
  runApp( MaterialApp(
    home:  MyApp() ,
  ),);
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Program 3"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: Image.asset('assets/images/img1.jpg'),
                ),
                Expanded(
                  child: Image.asset('assets/images/img2.jpg'),
                ),
                Expanded(
                  child: Image.asset('assets/images/img3.jpg'),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Image.network(
                'https://static.toiimg.com/thumb/msid-98290591,width-1280,resizemode-4/98290591.jpg'),
            const SizedBox(height: 16),
            Image.network(
                'https://static.toiimg.com/thumb/msid-98290591,width-1280,resizemode-4/98290591.jpg'),
          ],
        ),
      ),
    );
  }
}
