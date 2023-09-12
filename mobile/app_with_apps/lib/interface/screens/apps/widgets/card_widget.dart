import 'package:app_with_apps/constants/exports/exports.dart';
import 'package:app_with_apps/constants/models/notes/note_class.dart';
import 'package:app_with_apps/interface/screens/apps/note_screen.dart';

class CardFolder extends StatefulWidget {
  const CardFolder({super.key, required this.notes, required this.title});

  final List<Note> notes;
  final String title;

  @override
  State<CardFolder> createState() => _CardFolderState();
}

class _CardFolderState extends State<CardFolder> {
  goToNote(Note note) => Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => NoteScreen(
                  title: note.title,
                  description: note.description,
                  id: note.id,
                )),
      );

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: widget.notes.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () => goToNote(widget.notes[index]),
            child: Card(
              title: widget.notes[index].description,
            ),
          );
        });
  }
}

class Card extends StatelessWidget {
  const Card({
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
