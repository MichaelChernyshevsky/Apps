import 'package:app_with_apps/api/notes/connections/common_api.dart';
import 'package:app_with_apps/api/notes/connections/folder_api.dart';
import 'package:app_with_apps/api/notes/connections/note_api.dart';
import 'package:app_with_apps/constants/models/notes/notes.dart';

class ServiceApiNotes {
  final CommonApi _commonApi = CommonApi();
  final FolderApi _folderApi = FolderApi();
  final NoteApi _noteApi = NoteApi();

  // common
  Future<Notes> getData() async => await _commonApi.getData();
  // folder
  Future<int> createFolder(String title) async =>
      await _folderApi.create(title);

  Future<int> deleteFolder(int id) async => await _folderApi.delete(id);
  // note
  Future<int> createNote(String title) async => await _noteApi.create(title);

  Future<int> deleteNote(int id) async => await _noteApi.delete(id);
}
