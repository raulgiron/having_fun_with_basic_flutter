import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return StateMyApp();
  }
}

class StateMyApp extends State<StatefulWidget> {
  late List<String> notes;

  @override
  void initState() {
    super.initState();
    if (kDebugMode) {
      print("Init State Method Called");
    }
    notes = [
      "Raul's Learning Flutter",
      "Make breakfast",
      "Take a shower",
      "Go to work",
      "Take a lunch",
      "Get back to work",
      "Go Home to rest",
    ];
  }

  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print("Method build Refreshed");
    }
    return MaterialApp(
      title: "MyApp",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Title App"),
        ),
        body: Column(
          children: notes.map((e) => Reminders(e)).toList(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            setState(() {
              if (kDebugMode) {
                notes.add("New note added");
                print("Pressed Click Button");
                print(notes.length);
              }
            });
          }),
          child: const Icon(Icons.view_list),
        ),
      ),
    );
  }
}

class Reminders extends StatelessWidget {
  Reminders(this.note, {super.key});
  String note;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text(note),
      ),
    );
  }
}
