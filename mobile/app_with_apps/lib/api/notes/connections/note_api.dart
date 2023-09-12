import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:app_with_apps/constants/uri.dart';
import 'package:http/http.dart';

class NoteApi {
  Future<int> create(String title) async {
    final body = {'title': title};
    final Response response = await http.put(
      Uri.parse(ConstantsUri.createNote),
      body: jsonEncode(body),
    );
    return response.statusCode != 200
        ? throw "error"
        : json.decode(response.body)['id'];
  }

  Future<int> delete(int id) async {
    final body = {'id': id};
    final Response response = await http.put(
      Uri.parse(ConstantsUri.deleteNote),
      body: jsonEncode(body),
    );
    return response.statusCode != 200
        ? throw "error"
        : json.decode(response.body)['id'];
  }
}
