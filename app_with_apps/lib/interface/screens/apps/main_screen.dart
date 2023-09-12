import 'package:app_with_apps/constants/exports/exports.dart';
import 'package:app_with_apps/constants/localization/text.dart';
import 'package:app_with_apps/constants/models/state_enum.dart';
import 'package:app_with_apps/interface/screens/apps/widgets/common/main_screen/mainbody_widget.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({super.key});

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  AppState state = AppState.loading;
  // DataBloc? _dataBloc;
  List<dynamic> elements = [];

  @override
  void initState() {
    // _dataBloc = BlocProvider.of<DataBloc>(context);
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          // BlocListener<DataBloc, DataState>(
          //   listener: (context, state) {
          //     if (state is GetSuccessState) {
          //       getData(state.notes);
          //     } else if (state is UnSuccessState) {
          //     } else if (state is ErrorState) {}
          //   },
          //   child: ElevatedButton(
          //       onPressed: () {
          //         _dataBloc!.add(GetNotesEvent());
          //       },
          //       child: Text(ConstantText.upload)),
          // ),
        ],
      ),
      body: MainBody(
        elements: elements,
        state: state,
      ),
    );
  }
}
