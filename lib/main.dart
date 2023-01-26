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
    return MaterialApp(
      title: "MyApp",
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.lightBlue),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Title App"),
        ),
        body: ListView(
          children: notes.map((e) => Reminders(e)).toList(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (() {
            setState(() {
              notes.add("New note added");
            });
          }),
          child: const Icon(Icons.view_list),
        ),
      ),
    );
  }
}

class Reminders extends StatelessWidget {
  const Reminders(this.note, {super.key});
  final String note;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(
        child: Text(note),
      ),
    );
  }
}
