import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
import 'package:piano_flutter/vo/notes.dart';

class WhiteKey extends StatelessWidget {
  final Note _note;

  final _player = AudioPlayer();

  WhiteKey(this._note);

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              primary: Colors.white, onPrimary: Colors.black),
          onPressed: () {
            _player.setAsset(_note.audioRes);
            _player.play();
          },
          child: Text(_note.prettyValue),
        ),
      );
}
