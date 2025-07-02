import 'package:fluent_ui/fluent_ui.dart';
import 'package:winguard/core/intl/generated/l10n.dart';

class InstalledAppsPage extends StatelessWidget {
  const InstalledAppsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ScaffoldPage(
      header: PageHeader(
        title: Text(S.of(context).installedAppsPageTitle),
      ),
    );
  }
}
