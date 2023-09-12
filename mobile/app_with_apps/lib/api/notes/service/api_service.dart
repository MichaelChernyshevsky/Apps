import 'package:app_with_apps/api/notes/connections/common_api.dart';
import 'package:app_with_apps/api/notes/connections/folder_api.dart';
import 'package:app_with_apps/api/notes/connections/note_api.dart';

class ServiceApiNotes {
  final CommonApi _commonApi = CommonApi();
  final FolderApi _folderApi = FolderApi();
  final NoteApi _noteApi = NoteApi();

  // common
  Future<List<dynamic>> getData() async => await _commonApi.getData();

  Future<List<dynamic>> deleteAll() async => await _commonApi.deletAll();

  Future<List<dynamic>> union() async => await _commonApi.union();

  Future<List<dynamic>> unionInFolder() async =>
      await _commonApi.unionInFolder();

  // folder
  Future<List<dynamic>> createFolder() async => await _folderApi.create();

  Future<List<dynamic>> deleteFolder() async => await _folderApi.delete();

  Future<List<dynamic>> updateFolder() async => await _folderApi.update();

  // note
  Future<List<dynamic>> createNote() async => await _noteApi.create();

  Future<List<dynamic>> deleteNote() async => await _noteApi.delete();

  Future<List<dynamic>> updateNote() async => await _noteApi.update();
}
