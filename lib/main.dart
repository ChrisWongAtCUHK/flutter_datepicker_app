import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter DatePicker',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController dateInput = TextEditingController();

  @override
  void initState() {
    dateInput.text = ''; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent, //background color of app bar
        title: const Text("DatePicker in Flutter"),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        height: MediaQuery.of(context).size.width / 3,
        child: Center(
          child: TextField(
            controller: dateInput,
            //editing controller of this TextField
            decoration: const InputDecoration(
              icon: Icon(Icons.calendar_today),
              labelText: 'Enter Date',
            ),
            //set readOnly true, so that user will not able to edit text
            readOnly: true,
            onTap: () async {},
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
