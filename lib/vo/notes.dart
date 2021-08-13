enum Note {
  C,
  Db,
  D,
  Eb,
  E,
  F,
  Gb,
  G,
  Ab,
  A,
  Bb,
  B,
}

extension NoteExt on Note {
  String get prettyValue => this.toString().split('.').last;

  bool get isWhite => [Note.Ab, Note.Bb, Note.Db, Note.Eb, Note.Gb]
      .every((note) => this != note);

  String get audioRes {
    switch (this) {
      case Note.A:
        return 'assets/notes/A.mp3';
      case Note.Ab:
        return 'assets/notes/Ab.mp3';
      case Note.B:
        return 'assets/notes/B.mp3';
      case Note.Bb:
        return 'assets/notes/Bb.mp3';
      case Note.C:
        return 'assets/notes/C.mp3';
      case Note.D:
        return 'assets/notes/D.mp3';
      case Note.Db:
        return 'assets/notes/Db.mp3';
      case Note.E:
        return 'assets/notes/E.mp3';
      case Note.Eb:
        return 'assets/notes/Eb.mp3';
      case Note.F:
        return 'assets/notes/F.mp3';
      case Note.G:
        return 'assets/notes/G.mp3';
      case Note.Gb:
        return 'assets/notes/Gb.mp3';
    }
  }
}
