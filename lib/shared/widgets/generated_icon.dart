import 'package:fluent_ui/fluent_ui.dart';
import 'package:winguard/core/intl/generated/l10n.dart';

class GeneratedIcon extends StatelessWidget {
  const GeneratedIcon({
    required this.packageName,
    super.key,
    this.size = 40.0,
  });
  final String packageName;
  final double size;

  Color _generateColor(String text) {
    final hash = text.hashCode;
    final index = hash % Colors.accentColors.length;
    return Colors.accentColors[index];
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final initial = packageName.isNotEmpty
        ? packageName[0].toUpperCase()
        : S.of(context).unknownPackage;
    final color = _generateColor(packageName);

    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          initial,
          style: theme.typography.bodyLarge?.copyWith(
            color: color.basedOnLuminance(),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
