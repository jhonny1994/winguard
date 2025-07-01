import 'package:fluent_ui/fluent_ui.dart';
import 'package:winguard/core/intl/generated/l10n.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({
    required this.error,
    required this.onRefresh,
    super.key,
    this.stackTrace,
  });
  final Object error;
  final StackTrace? stackTrace;
  final VoidCallback onRefresh;

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    // TODO: Add more sophisticated error parsing/display logic
    final errorMessage = error.toString();
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            FluentIcons.error_badge,
            size: 48,
            color: theme.resources.systemFillColorCritical,
          ),
          const SizedBox(height: 16),
          Text(
            S.of(context).errorWingetNotInstalled, // Placeholder
            style: theme.typography.bodyLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            errorMessage,
            style: theme.typography.caption,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          FilledButton(
            onPressed: onRefresh,
            child: Text(S.of(context).refreshButton),
          ),
        ],
      ),
    );
  }
}
