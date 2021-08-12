import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:piano_flutter/vo/notes.dart';

class KeyboardKey extends StatelessWidget {
  final Note _note;
  final _player = AudioPlayer();
  Color? _background;
  Color? _textColor;
  double? _width;

  KeyboardKey(this._note) {
    if (_note.isWhite) {
      _width = double.infinity;
      _background = Colors.white;
      _textColor = Colors.black;
    } else {
      _width = 200;
      _background = Colors.black;
      _textColor = Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
        width: _width,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: _background, onPrimary: _textColor),
          onPressed: () {
            _player.setAsset(_note.audioRes);
            _player.play();
          },
          child: Text(_note.prettyValue),
        ),
      );
}
