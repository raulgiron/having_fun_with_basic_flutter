import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'MyApp',
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Title App'),
      ),
      body: const Center(
        child: Text('Hola Mundo!', style: TextStyle(height: -1, fontSize: 40)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (() {
          if (kDebugMode) {
            print('Click');
          }
        }),
        child: const Icon(Icons.view_list),
      ),
    ),
  ));
}
