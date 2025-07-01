import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locale_names/locale_names.dart';
import 'package:winguard/core/intl/generated/l10n.dart';
import 'package:winguard/core/providers/locale_provider.dart';
import 'package:winguard/theme/app_theme.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeNotifierProvider);
    final locale = ref.watch(localeNotifierProvider);

    return ScaffoldPage(
      header: PageHeader(title: Text(S.of(context).settingsPageTitle)),
      content: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          Expander(
            enabled: false,
            icon: const SizedBox.shrink(),
            initiallyExpanded: true,
            header: Text(S.of(context).settingsAppearance),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(S.of(context).theme),
                SizedBox(
                  width: 150,
                  child: ComboBox<ThemeMode>(
                    value: themeMode,
                    isExpanded: true,
                    items: [
                      ComboBoxItem(
                        value: ThemeMode.system,
                        child: Text(S.of(context).themeSystem),
                      ),
                      ComboBoxItem(
                        value: ThemeMode.light,
                        child: Text(S.of(context).themeLight),
                      ),
                      ComboBoxItem(
                        value: ThemeMode.dark,
                        child: Text(S.of(context).themeDark),
                      ),
                    ],
                    onChanged: (mode) {
                      if (mode != null) {
                        ref
                            .read(themeModeNotifierProvider.notifier)
                            .setThemeMode(mode);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expander(
            enabled: false,
            icon: const SizedBox.shrink(),
            initiallyExpanded: true,
            header: Text(S.of(context).language),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(S.of(context).language),
                SizedBox(
                  width: 150,
                  child: ComboBox<Locale>(
                    value: locale,
                    isExpanded: true,
                    items: S.delegate.supportedLocales.map((l) {
                      final locale = Locale.fromSubtags(
                        languageCode: l.languageCode,
                        scriptCode: l.scriptCode,
                        countryCode: l.countryCode,
                      );
                      return ComboBoxItem(
                        value: locale,
                        child: Text(locale.nativeDisplayLanguage),
                      );
                    }).toList(),
                    onChanged: (lang) {
                      if (lang != null) {
                        ref
                            .read(localeNotifierProvider.notifier)
                            .setLocale(lang);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
