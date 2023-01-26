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
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.brown),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Title App"),
        ),
        body: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: notes.length,
          itemBuilder: (context, position) {
            return Reminders(notes[position]);
          },
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
  final String note;
  const Reminders(this.note, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Center(
          child: Text(note),
        ),
      ),
      onTap: () {
        debugPrint("Clicked on task $note");
      },
      onDoubleTap: () {
        debugPrint("Double clicked on task $note");
      },
    );
  }
}
