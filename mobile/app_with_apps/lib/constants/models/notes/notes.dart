import 'package:app_with_apps/constants/models/notes/folder_class.dart';
import 'package:http/http.dart';

class Notes {
  final List<Folder> folders;

  Notes({required this.folders});

  factory Notes.data({required Response response}) {
    final List<Folder> folders = [];

    return Notes(folders: folders);
  }
}
