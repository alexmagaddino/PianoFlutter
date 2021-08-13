import 'package:flutter/material.dart';
import 'package:piano_flutter/components/key.dart';
import 'package:piano_flutter/vo/notes.dart';

class Keyboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: Note.values.map((n) => KeyboardKey(n)).toList(),
        ),
      );
}
