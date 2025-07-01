import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shimmer/shimmer.dart';
import 'package:winguard/core/intl/generated/l10n.dart';
import 'package:winguard/shared/models/package.dart';
import 'package:winguard/shared/providers/package_icon_provider.dart';
import 'package:winguard/shared/widgets/generated_icon.dart';

class PackageListCard extends ConsumerWidget {
  const PackageListCard({
    super.key,
    this.package,
    this.onPressed,
    this.actions,
  }) : isLoading = false;

  const PackageListCard.loading({
    super.key,
  }) : package = null,
       onPressed = null,
       actions = null,
       isLoading = true;
  final Package? package;
  final VoidCallback? onPressed;
  final List<Widget>? actions;
  final bool isLoading;

  Widget _buildIcon(BuildContext context, WidgetRef ref) {
    if (isLoading || package == null) {
      return Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: FluentTheme.of(
            context,
          ).resources.cardBackgroundFillColorDefault,
          shape: BoxShape.circle,
        ),
      );
    }

    final iconAsyncValue = ref.watch(packageIconProvider(package!.id));

    return iconAsyncValue.when(
      data: (iconUrl) {
        if (iconUrl == null) {
          return GeneratedIcon(packageName: package!.name);
        }
        return CachedNetworkImage(
          imageUrl: iconUrl,
          width: 40,
          height: 40,
          placeholder: (context, url) => const SizedBox(
            width: 40,
            height: 40,
            child: CircleAvatar(),
          ),
          errorWidget: (context, url, error) =>
              GeneratedIcon(packageName: package!.name),
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
        );
      },
      loading: () => const SizedBox(
        width: 40,
        height: 40,
        child: CircleAvatar(),
      ),
      error: (_, _) => GeneratedIcon(packageName: package!.name),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = FluentTheme.of(context);
    final s = S.of(context);
    final subtitleStyle = theme.typography.caption;

    if (isLoading) {
      // Enhanced shimmer colors with better contrast for both light and dark modes
      final isDark = FluentTheme.of(context).brightness == Brightness.dark;
      final baseColor = isDark
          ? const Color(0xFF3A3A3A) // Darker base for better contrast
          : const Color(0xFFDDDDDD); // Slightly darker for light mode
      final highlightColor = isDark
          ? const Color(0xFF4A4A4A) // More visible highlight for dark mode
          : const Color(0xFFEEEEEE); // Lighter highlight for light mode

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Shimmer.fromColors(
          baseColor: baseColor,
          highlightColor: highlightColor,
          period: const Duration(milliseconds: 1200),
          child: Row(
            children: [
              // Leading icon shimmer
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: baseColor,
                  shape: BoxShape.circle,
                ),
              ),
              const SizedBox(width: 16),
              // Content shimmer
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title shimmer - varied widths for realism
                    Container(
                      width: 120 + (hashCode % 60).toDouble(),
                      height: 18,
                      decoration: BoxDecoration(
                        color: baseColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    const SizedBox(height: 6),
                    // Subtitle shimmer
                    Container(
                      width: 80 + (hashCode % 40).toDouble(),
                      height: 14,
                      decoration: BoxDecoration(
                        color: baseColor,
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  ],
                ),
              ),
              // Trailing action shimmer
              Container(
                width: 60,
                height: 32,
                decoration: BoxDecoration(
                  color: baseColor,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
            ],
          ),
        ),
      );
    }
    return _buildContent(context, ref, s, subtitleStyle);
  }

  Widget _buildContent(
    BuildContext context,
    WidgetRef ref,
    S s,
    TextStyle? subtitleStyle,
  ) {
    // This method should only be called when not loading
    // Loading state is handled separately with pure shimmer
    return ListTile(
      onPressed: onPressed,
      leading: _buildIcon(context, ref),
      title: Text(
        package!.name,
        style: const TextStyle(fontWeight: FontWeight.w600),
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: RichText(
        text: TextSpan(
          style: subtitleStyle,
          children: [
            TextSpan(text: package!.version),
            if (package!.newVersion != null)
              TextSpan(
                text: s.versionSeparator + package!.newVersion!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: FluentTheme.of(context).accentColor,
                ),
              ),
          ],
        ),
      ),
      trailing: Row(
        children: actions ?? [],
      ),
    );
  }
}
