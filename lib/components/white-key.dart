import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:piano_flutter/vo/notes.dart';

class WhiteKey extends StatelessWidget {
  final Note _note;
  final _player = AudioPlayer();
  Color? _background;
  Color? _textColor;
  double? _width;

  WhiteKey(this._note) {
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
        width: _width,
        height: 50,
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
