import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:winguard/core/intl/generated/l10n.dart';
import 'package:winguard/features/updates/providers/updates_provider.dart';
import 'package:winguard/shared/models/package.dart';
import 'package:winguard/shared/widgets/package_list_card.dart';
import 'package:winguard/shared/widgets/stateful_content_area.dart';

class UpdatesPage extends ConsumerWidget {
  const UpdatesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final upgradablePackages = ref.watch(upgradablePackagesProvider);
    final updateAllState = ref.watch(updateAllPackagesProvider);
    final s = S.of(context);

    return ScaffoldPage(
      header: PageHeader(
        title: Row(
          children: [
            Text(s.updatesPageTitle),
            if (upgradablePackages.isLoading) ...[
              const SizedBox(width: 12),
              const SizedBox(
                width: 16,
                height: 16,
                child: ProgressRing(strokeWidth: 2),
              ),
            ],
          ],
        ),
        commandBar: upgradablePackages.when(
          data: (packages) => packages.isNotEmpty
              ? CommandBar(
                  overflowBehavior: CommandBarOverflowBehavior.scrolling,
                  primaryItems: [
                    CommandBarButton(
                      icon: const Icon(FluentIcons.refresh),
                      label: Text(s.refresh),
                      onPressed: updateAllState.isLoading
                          ? null // Disable refresh during update
                          : () => ref.invalidate(upgradablePackagesProvider),
                    ),
                    CommandBarButton(
                      icon: updateAllState.isLoading
                          ? const SizedBox(
                              width: 16,
                              height: 16,
                              child: ProgressRing(strokeWidth: 2),
                            )
                          : const Icon(FluentIcons.update_restore),
                      label: Text(
                        updateAllState.isLoading ? s.updatingAll : s.updateAll,
                      ),
                      onPressed: updateAllState.isLoading
                          ? null
                          : () => _showUpdateAllConfirmation(
                              context,
                              ref,
                              packages,
                            ),
                    ),
                  ],
                )
              : null,
          loading: () => CommandBar(
            overflowBehavior: CommandBarOverflowBehavior.scrolling,
            primaryItems: [
              CommandBarButton(
                icon: const SizedBox(
                  width: 16,
                  height: 16,
                  child: ProgressRing(strokeWidth: 2),
                ),
                label: Text(s.loadingPackages),
                onPressed: null, // Disabled while loading
              ),
            ],
          ),
          error: (error, _) => CommandBar(
            overflowBehavior: CommandBarOverflowBehavior.scrolling,
            primaryItems: [
              CommandBarButton(
                icon: const Icon(FluentIcons.refresh),
                label: Text(s.refresh),
                onPressed: () => ref.invalidate(upgradablePackagesProvider),
              ),
            ],
          ),
        ),
      ),
      content: StatefulContentArea<Package>(
        asyncValue: upgradablePackages,
        contentBuilder: (package) => PackageListCard(
          package: package,
          onPressed: () {
            // TODO: Navigate to package details
          },
          actions: [
            _buildUpdateButton(context, ref, package),
          ],
        ),
        emptyMessage: s.noUpdatesAvailable,
        onRefresh: () => ref.invalidate(upgradablePackagesProvider),
      ),
    );
  }

  Widget _buildUpdateButton(
    BuildContext context,
    WidgetRef ref,
    Package package,
  ) {
    final updateState = ref.watch(updatePackageProvider(package.id));
    final s = S.of(context);

    return Button(
      onPressed: updateState.isLoading
          ? null
          : () => ref
                .read(updatePackageProvider(package.id).notifier)
                .updatePackage(),
      child: updateState.when(
        data: (_) => Text(s.update),
        loading: () => const SizedBox(
          width: 16,
          height: 16,
          child: ProgressRing(strokeWidth: 2),
        ),
        error: (_, _) => Icon(
          FluentIcons.error,
          color: FluentTheme.of(context).resources.systemFillColorCritical,
        ),
      ),
    );
  }

  Future<void> _showUpdateAllConfirmation(
    BuildContext context,
    WidgetRef ref,
    List<Package> packages,
  ) async {
    final s = S.of(context);

    final result = await showDialog<bool>(
      context: context,
      builder: (context) => ContentDialog(
        title: Text(s.updateAllConfirmationTitle),
        content: Text(
          s.updateAllConfirmationMessage(packages.length),
        ),
        actions: [
          Button(
            onPressed: () => Navigator.pop(context, false),
            child: Text(s.cancel),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(s.updateAll),
          ),
        ],
      ),
    );

    if (result ?? false) {
      await ref.read(updateAllPackagesProvider.notifier).updateAllPackages();
    }
  }
}
