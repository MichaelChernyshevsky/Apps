import 'package:app_with_apps/constants/exports/exports.dart';
import 'package:app_with_apps/constants/models/notes/element_enum.dart';
import 'package:app_with_apps/constants/models/notes/folder_class.dart';

class CardNotes extends StatefulWidget {
  const CardNotes({super.key, required this.element});

  final dynamic element;

  @override
  State<CardNotes> createState() => _CardNotesState();
}

class _CardNotesState extends State<CardNotes> {
  ElementNote? element;
  String? title;
  dynamic additionally;

  @override
  void initState() {
    element = widget.element is Folder ? ElementNote.folder : ElementNote.note;
    title = widget.element.title;
    additionally = element == ElementNote.folder
        ? widget.element.notes
        : widget.element.comment;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.element is Folder) {
      return InkWell(
        onTap: () {},
        child: CardNote(
          title: title!,
        ),
      );
    }

    return CardNote(
      title: title!,
    );
  }
}

class CardNote extends StatelessWidget {
  const CardNote({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 30,
      // width: 300,
      color: Colors.grey,
      child: Text(title),
    );
  }
}
