import 'package:app_with_apps/constants/exports/exports.dart';
import 'package:app_with_apps/constants/localization/text.dart';
import 'package:app_with_apps/constants/models/state_enum.dart';
import 'package:app_with_apps/interface/screens/apps/widgets/mainbody_widget.dart';
import 'package:app_with_apps/manager/notes/notes_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  AppState state = AppState.loading;
  NotesBloc? _bloc;
  List<dynamic> elements = [];

  @override
  void initState() {
    _bloc = BlocProvider.of<NotesBloc>(context);
    _bloc!.add(GetNotesEvent());
    super.initState();
  }

  getData(List<dynamic> arr) {
    if (arr.isNotEmpty) {
      elements = arr;
      state = AppState.loaded;
    } else {
      state = AppState.empty;
    }
    setState(() {});
  }

  createFolder(title) => _bloc!.add(CreateFolderEvent(title: title));

  Future<void> _displayTextInputDialog(BuildContext context) async {
    String valueText = '';
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text(ConstantText.creation),
            content: TextField(
              onChanged: (value) {
                setState(() {
                  valueText = value;
                });
              },
              // decoration: InputDecoration(hintText: "Text Field in Dialog"),
            ),
            actions: <Widget>[
              MaterialButton(
                child: Text(ConstantText.ok),
                onPressed: () => setState(() {
                  createFolder(valueText);
                  Navigator.pop(context);
                }),
              ),
            ],
          );
        });
  }

  showCreation() => _displayTextInputDialog(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            ElevatedButton(
                onPressed: showCreation, child: Text(ConstantText.create)),
          ],
        ),
        body: BlocListener<NotesBloc, NotesState>(
          listener: (context, state) {
            if (state is NotesData) {
              getData(state.notes);
            } else if (state is NotesError) {
            } else if (state is NotesCreateSucess) {
            } else if (state is NotesDeleteSucess) {}
          },
          child: MainBody(
            elements: elements,
            state: state,
          ),
        ));
  }
}
