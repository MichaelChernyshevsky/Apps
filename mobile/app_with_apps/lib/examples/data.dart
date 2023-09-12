
import 'package:app_with_apps/constants/models/folder_class.dart';
import 'package:app_with_apps/constants/models/note_class.dart';

get dataExample => [
      Folder(
        title: "title_1",
        notes: [
          Note(title: "title_1", comment: "comment_1"),
          Note(title: "title_2", comment: "comment_2"),
          Note(title: "title_3", comment: "comment_3"),
        ],
      ),
      Folder(title: "title_2", notes: [
        Note(title: "title_1", comment: "comment_4"),
      ])
    ];
