import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: const Program_4(),
  ));
}

class Program_4 extends StatefulWidget {
  const Program_4({Key? key}) : super(key: key);

  @override
  State<Program_4> createState() => _Program_4State();
}

class _Program_4State extends State<Program_4> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  DateTime _selectedDate = DateTime.now();

  void _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2023, 12, 31),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void _goToNextScreen() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => new NextScreen(
            firstName: _firstNameController.text,
            selectedDate: _selectedDate,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Program 4"),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _firstNameController,
                decoration: InputDecoration(
                  hintText: 'Enter your first name',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your first name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 16.0),
              Column(
                children: [
                  Text('SelectedDate: ${_selectedDate.toString()}'),
                  SizedBox(width: 16.0),
                  ElevatedButton(
                    onPressed: () => _selectDate(context),
                    child: Text('Select Date'),
                  ),
                ],
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: _goToNextScreen,
                child: Text('Go to next screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NextScreen extends StatelessWidget {
  final String firstName;
  final DateTime selectedDate;

  const NextScreen({
    Key? key,
    required this.firstName,
    required this.selectedDate,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('First Name: $firstName'),
            SizedBox(height: 16.0),
            Text('Selected Date: ${selectedDate.toString()}'),
          ],
        ),
      ),
    );
  }
}
