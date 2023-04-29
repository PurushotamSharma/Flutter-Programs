import 'package:flutter/material.dart';

void main() {
  runApp(TabBarDemo());
}

// Creating a class
class TabBarDemo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
              tabs: [
                Tab(icon:Icon(Icons.check_box),text: "Tab 1"),
                Tab(icon:Icon(Icons.radio_button_checked),text: "Tab2"),
              ],
            ),
            title: Text("Flutter Practice Program"),
          ),
          body: TabBarView(
            children: [
              CheckboxGroup(),
              RadioButtonGroup(),
            ],
          ),
        ),
      ),
    );
  }

}

class CheckboxGroup extends StatefulWidget {
  @override
  _CheckboxGroupState createState() => _CheckboxGroupState();
}

class _CheckboxGroupState extends State<CheckboxGroup> {
  List<String> _checked = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          title: Text('Option 1'),
          value: _checked.contains('Option 1'),
          onChanged: (value) {
            setState(() {
              if (value!) {
                _checked.add('Option 1');
              } else {
                _checked.remove('Option 1');
              }
            });
          },
        ),
        CheckboxListTile(
          title: Text('Option 2'),
          value: _checked.contains('Option 2'),
          onChanged: (value) {
            setState(() {
              if (value!) {
                _checked.add('Option 2');
              } else {
                _checked.remove('Option 2');
              }
            });
          },
        ),
        CheckboxListTile(
          title: Text('Option 3'),
          value: _checked.contains('Option 3'),
          onChanged: (value) {
            setState(() {
              if (value!) {
                _checked.add('Option 3');
              } else {
                _checked.remove('Option 3');
              }
            });
          },
        ),
        CheckboxListTile(
          title: Text('Option 4'),
          value: _checked.contains('Option 4'),
          onChanged: (value) {
            setState(() {
              if (value!) {
                _checked.add('Option 4');
              } else {
                _checked.remove('Option 4');
              }
            });
          },
        ),
        ElevatedButton(
            onPressed: () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(_checked.join(', ')))), child: Text('Show Selected Checkboxes')),


      ],
    );
  }
}
class RadioButtonGroup extends StatefulWidget {
  @override
  _RadioButtonGroupState createState() => _RadioButtonGroupState();
}

class _RadioButtonGroupState extends State<RadioButtonGroup> {
  String? _selected;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: Text('Radio Option A'),
          value: 'Radio Option A',
          groupValue: _selected,
          onChanged: (value) => setState(() => _selected = value as String),
        ),
        RadioListTile(
          title: Text('Radio Option B'),
          value: 'Radio Option B',
          groupValue: _selected,
          onChanged: (value) => setState(() => _selected = value as String),
        ),
        RadioListTile(
          title: Text('Radio Option C'),
          value: 'Radio Option C',
          groupValue: _selected,
          onChanged: (value) => setState(() => _selected = value as String),
        ),
        ElevatedButton(
            onPressed:
                () => ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(_selected ?? 'No option selected.'))),
            child: Text('Show Selected Radiobutton')),
      ],
    );
  }
}