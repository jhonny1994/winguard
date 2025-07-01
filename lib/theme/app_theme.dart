import 'package:fluent_ui/fluent_ui.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:winguard/core/constants/app_constants.dart';
import 'package:winguard/shared/providers/shared_preferences_provider.dart';

part 'app_theme.g.dart';

final darkTheme = FluentThemeData(
  accentColor: _bronzeAccent,
  brightness: Brightness.dark,
  visualDensity: VisualDensity.standard,
  scaffoldBackgroundColor: const Color(0xFF1F2329), // Slate Deep
  navigationPaneTheme: const NavigationPaneThemeData(
    backgroundColor: Color(0xFF1F2329), // Slate Deep
  ),
);

final lightTheme = FluentThemeData(
  accentColor: _bronzeAccent,
  brightness: Brightness.light,
  visualDensity: VisualDensity.standard,
  navigationPaneTheme: const NavigationPaneThemeData(
    backgroundColor: Color(0xFFF9F9F9), // Slate Soft
  ),
);

// Theming based on the "Wingard Slate & Bronze" palette from ui-ux.md

final _bronzeAccent = AccentColor.swatch(
  const {
    'darkest': Color(0xffa15f35),
    'darker': Color(0xffb06b3e),
    'dark': Color(0xffc27848),
    'normal': Color(0xFFD88A53),
    'light': Color(0xffe3a06f),
    'lighter': Color(0xffeab588),
    'lightest': Color(0xfff1caa1),
  },
);

@riverpod
class ThemeModeNotifier extends _$ThemeModeNotifier {
  static const String _themeModeKey = AppConstants.themeModeKey;

  @override
  ThemeMode build() {
    return _getThemeMode();
  }

  Future<void> setThemeMode(ThemeMode mode) async {
    state = mode;
    await ref
        .read(sharedPreferencesProvider)
        .setString(_themeModeKey, mode.name);
  }

  ThemeMode _getThemeMode() {
    final prefs = ref.watch(sharedPreferencesProvider);
    if (prefs.containsKey(_themeModeKey)) {
      final themeModeStr = prefs.getString(_themeModeKey);
      return ThemeMode.values.firstWhere(
        (e) => e.name == themeModeStr,
        orElse: () => ThemeMode.system,
      );
    }
    return ThemeMode.system;
  }
}
