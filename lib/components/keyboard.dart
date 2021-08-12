import 'package:flutter/material.dart';
import 'package:piano_flutter/components/key.dart';
import 'package:piano_flutter/vo/notes.dart';

class Keyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
        children: Note.values.map((n) => KeyboardKey(n)).toList(),
      );
}
