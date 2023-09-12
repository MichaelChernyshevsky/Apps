

import 'package:app_with_apps/constants/exports/exports.dart';
import 'package:app_with_apps/constants/models/state_enum.dart';
import 'package:app_with_apps/interface/screens/apps/widgets/card_widget.dart';

class MainBody extends StatelessWidget {
  const MainBody({
    super.key,
    required this.elements,
    required this.state,
  });

  final List<dynamic> elements;
  final AppState state;

  @override
  Widget build(BuildContext context) {
    if (state == AppState.empty) {
      return const Center(
        child: Text("Empty "),
      );
    } else if (state == AppState.loaded) {
      return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: elements.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: CardNotes(element: elements[index]),
          );
        },
      );
    }
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
