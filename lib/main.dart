import 'package:flutter/material.dart';
import 'package:piano_flutter/components/white-key.dart';
import 'package:piano_flutter/vo/notes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Piano',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Piano'),
          ),
          body: Column(
            children: Note.values.map((n) => WhiteKey(n)).toList(),
          ),
        ),
      );
}
