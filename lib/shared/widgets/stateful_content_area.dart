import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:winguard/core/intl/generated/l10n.dart';
import 'package:winguard/shared/widgets/app_error_widget.dart';
import 'package:winguard/shared/widgets/package_list_card.dart';

class StatefulContentArea<T> extends StatelessWidget {
  const StatefulContentArea({
    required this.asyncValue,
    required this.contentBuilder,
    required this.emptyMessage,
    required this.onRefresh,
    super.key,
    this.emptyIcon = FluentIcons.completed_solid,
  });
  final AsyncValue<List<T>> asyncValue;
  final Widget Function(T item) contentBuilder;
  final String emptyMessage;
  final IconData emptyIcon;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    return asyncValue.when(
      data: (items) {
        if (items.isEmpty) {
          return _buildEmptyState(context);
        }
        return _buildListView(
          childCount: items.length,
          builder: (context, index) => contentBuilder(items[index]),
        );
      },
      error: (error, stackTrace) => AppErrorWidget(
        error: error,
        stackTrace: stackTrace,
        onRefresh: onRefresh,
      ),
      loading: () => AnimatedOpacity(
        opacity: 1,
        duration: const Duration(milliseconds: 300),
        child: Column(
          children: [
            // Add a subtle loading banner
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: FluentTheme.of(
                  context,
                ).resources.layerFillColorDefault.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 20,
                    height: 20,
                    child: ProgressRing(strokeWidth: 2),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    S.of(context).loadingPackages,
                    style: FluentTheme.of(context).typography.caption?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            // Show shimmer cards below
            Expanded(
              child: _buildListView(
                childCount: 6,
                builder: (context, index) => const PackageListCard.loading(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListView({
    required int childCount,
    required Widget? Function(BuildContext, int) builder,
  }) {
    return ListView.builder(
      itemCount: childCount,
      itemBuilder: builder,
    );
  }

  Widget _buildEmptyState(BuildContext context) {
    final theme = FluentTheme.of(context);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(emptyIcon, size: 48, color: theme.accentColor),
          const SizedBox(height: 16),
          Text(
            emptyMessage,
            style: theme.typography.bodyLarge,
          ),
        ],
      ),
    );
  }
}
