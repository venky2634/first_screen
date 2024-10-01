
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
   // List of items in the dropdown
  final List<String> items = ['Apple', 'Banana', 'Cherry', 'Date'];

  // Selected value from dropdown
  String? selectedItem;

String? _name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
          Center(
        child: DropdownButton<String>(
          value: selectedItem,
          hint: Text('Select a fruit'),
          icon: Icon(Icons.arrow_downward),
          onChanged: (String? newValue) {
            setState(() {
              selectedItem = newValue;
            });
          },
          items: items.map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
      ),
 SizedBox(height: 40,),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                // Validator for form validation
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value;
                },
              ),
      TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
                // Validator for form validation
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
                onSaved: (value) {
                  _name = value;
                },
              ),
              Text("jwhrfwbvjbvjwfw"),
                  Text("jwhrfwbvjbvjwfw"),
                      Text("jwhrfwbvjbvjwfw"),
                          Text("jwhrfwbvjbvjwfw"),
                              Text("jwhrfwbvjbvjwfw")
         ],),
      ),
    );
  }
}