// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:app_with_apps/constants/models/notes/note_class.dart';

class Folder {
  String title;
  List<Note> notes;
  Folder({
    required this.title,
    required this.notes,
  });
}
