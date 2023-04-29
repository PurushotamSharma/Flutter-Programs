import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Radio Button Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Radio Button Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _selectedOption = '';
  String _location = '';

  void _getCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _location = '${position.latitude}, ${position.longitude}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Please select an option:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            RadioListTile<String>(
              title: Text('Show Current Date and Time'),
              value: 'Show Current Date and Time',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
              },
            ),
            RadioListTile<String>(
              title: Text('Show Current Location of the device'),
              value: 'Show Current Location of the device',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
                _getCurrentLocation();
              },
            ),
            RadioListTile<String>(
              title: Text('Go to next screen'),
              value: 'Go to next screen',
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NextScreen()),
                );
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed:
              (_selectedOption == '' || _selectedOption == 'Go to next screen')
                  ? null
                  : () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title:
                    Text('You selected $_selectedOption.'),
                    content:
                    (_selectedOption == 'Show Current Date and Time')
                        ? Text(DateTime.now().toString())
                        : (_selectedOption ==
                        'Show Current Location of the device')
                        ? Text(_location)
                        : null,
                    actions: [
                      TextButton(
                        onPressed: () =>
                            Navigator.pop(context, 'OK'),
                        child: const Text('OK'),
                      ),
                    ],
                  ),
                );
              },
              child:
              const Text('Do as directed', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(title: const Text('Next Screen'), automaticallyImplyLeading:false),
      body:
      Center(child: const Text('This is the next screen.')),
    );
  }
}