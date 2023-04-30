import 'package:flutter/material.dart';
void main() {
  runApp( MaterialApp(
    home:  Program_3() ,
  ),);
}
class Program_3 extends StatelessWidget {
  const Program_3({Key? key}) : super(key: key);

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
