// import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     initialRoute: '/',
     routes: {
       '/': (context) =>Screen1 (),
       '/screen2':(context) => Screen2(),
       '/screen3':(context) => Screen3(),
       '/screen4' :(context) => Screen4(),
     },
   );
  }

}

class Screen1   extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     appBar: AppBar(
       title: Text("Screen1"),

     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text(
             'Screen1',
             style: TextStyle(fontSize: 30),

           ),
           SizedBox(height: 20,),
           ElevatedButton(
             onPressed: () {
               Navigator.pushNamed(context, '/screen2');
             },
             child: Text('Go to the Screen 20'),
           ),
           ElevatedButton(
             onPressed: () {
               Navigator.pushNamed(context, '/screen3');
             },
             child: Text('Go to Screen 3'),
           ),
           ElevatedButton(
             onPressed: () {
               Navigator.pushNamed(context, '/screen4');
             },
             child: Text('Go to Screen 4'),
           ),

         ],
       ),
     ),
   );
  }
}

class Screen2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
    title: Text('Screen 2'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Screen2',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 20,),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text('Go to Screen1'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/screen3');
            },
            child: Text('Go to Screen3'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/screen4');
            },
            child: Text('Go to Screen4'),
          ),

        ],
      ),
    ),
  );
  }

}

class Screen3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Screen3'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
              'Screen3',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text('Go to Screen1'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/screen2');
            },
            child: Text('Go to Screen2'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/screen4');
            },
            child: Text('Go to Screen4'),
          ),


        ],
      ),
    ),
  );
  }

}

class Screen4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text('Screen4'),
    ),
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Screen4',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: Text('Go to Screen1'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/screen2');
            },
            child: Text('Go to Screen2'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/screen3');
            },
            child: Text('Go to Screen3'),
          ),
        ],
      ),
    ),
  );
  }

}

