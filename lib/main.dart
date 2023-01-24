import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  List<String> notes = [
    "Raul's Learning Flutter",
    "Make breakfast",
    "Take a shower",
    "Go to work",
    "Take a lunch",
    "Get back to work",
    "Go Home to rest",
  ];

  @override
  Widget build(BuildContext context) {
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
            if (kDebugMode) {
              print("Pressed Click Button");
            }
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
