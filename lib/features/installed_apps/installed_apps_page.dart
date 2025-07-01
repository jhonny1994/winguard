import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:winguard/core/intl/generated/l10n.dart';
import 'package:winguard/features/installed_apps/providers/installed_apps_provider.dart';
import 'package:winguard/shared/models/package.dart';
import 'package:winguard/shared/widgets/package_list_card.dart';
import 'package:winguard/shared/widgets/stateful_content_area.dart';

class InstalledAppsPage extends ConsumerWidget {
  const InstalledAppsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final installedPackages = ref.watch(installedPackagesProvider);
    final s = S.of(context);

    return ScaffoldPage(
      header: PageHeader(
        title: Text(s.installedAppsPageTitle),
        commandBar: TextBox(
          placeholder: s.searchPlaceholder,
          onChanged: (value) {
            // TODO(): Implement filtering
          },
        ),
      ),
      content: StatefulContentArea<Package>(
        asyncValue: installedPackages,
        contentBuilder: (package) => PackageListCard(
          package: package,
          onPressed: () {
            // TODO: Navigate to package details
          },
        ),
        emptyMessage: s.noInstalledPackagesFound,
        onRefresh: () => ref.invalidate(installedPackagesProvider),
      ),
    );
  }
}
