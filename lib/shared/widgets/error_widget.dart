import 'package:fluent_ui/fluent_ui.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({required this.message, super.key});

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            FluentIcons.error_badge,
            size: 48,
            color: Colors.errorPrimaryColor,
          ),
          const SizedBox(height: 12),
          Text(
            message,
            style: FluentTheme.of(context).typography.bodyLarge,
          ),
        ],
      ),
    );
  }
}
