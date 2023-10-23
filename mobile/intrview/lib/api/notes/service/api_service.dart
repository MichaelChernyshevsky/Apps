import 'package:app_with_apps/api/notes/connections/folder_api.dart';

class ServiceApiNotes {
  final WhetherApi _whetherApi = WhetherApi();

  Future<String> getWhether() async => await _whetherApi.getWhether();
}
