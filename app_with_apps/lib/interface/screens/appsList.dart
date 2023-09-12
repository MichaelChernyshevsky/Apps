import 'package:app_with_apps/constants/exports/exports.dart';
import 'package:app_with_apps/constants/localization/text.dart';
import 'package:app_with_apps/interface/routes/app_routes.dart';

class Apps extends StatelessWidget {
  const Apps({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            onPressed: ()=>Navigator.of(context).pushNamed(AppRoutes.notesScreen),
            child: Text(ConstantText.notes)
          ),
        ],
      ),
    );
  }
}

