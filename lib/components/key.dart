import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:piano_flutter/vo/notes.dart';

class KeyboardKey extends StatelessWidget {
  final Note _note;
  final _player = AudioPlayer();
  Color? _background;
  Color? _textColor;
  double? _height;

  KeyboardKey(this._note) {
    if (_note.isWhite) {
      _height = double.infinity;
      _background = Colors.white;
      _textColor = Colors.black;
    } else {
      _height = 200;
      _background = Colors.black;
      _textColor = Colors.white;
    }
  }

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.only(bottom: 10),
        width: 50,
        height: _height,
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
