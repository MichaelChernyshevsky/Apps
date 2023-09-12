import 'package:app_with_apps/constants/models/notes/notes.dart';

class CommonApi {
  Future<Notes> getData() async {
    return Notes(folders: []);
  }
}
