import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController _nameController = TextEditingController();
  TextEditingController _ageController = TextEditingController();
  String _greetingMessage = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _nameController,
                decoration: InputDecoration(
                  labelText: 'Enter your name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _ageController,
                decoration: InputDecoration(
                  labelText: 'Enter your Age',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _greetingMessage = 'Hello, ${_nameController.text}!, your age is ${_ageController.text}';
                }
                );
              },
              child: Text('Say Hello'),
            ),
            SizedBox(height: 20),
            Text(
              _greetingMessage,
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
