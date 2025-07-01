import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:window_manager/window_manager.dart';
import 'package:winguard/core/intl/generated/l10n.dart';
import 'package:winguard/core/providers/locale_provider.dart';
import 'package:winguard/core/routing/app_router.dart';
import 'package:winguard/shared/providers/shared_preferences_provider.dart';
import 'package:winguard/theme/app_theme.dart';

Future<void> main() async {
  // Ensure the platform bindings are initialized.
  WidgetsFlutterBinding.ensureInitialized();

  // Configure the window for a native look.
  await Window.initialize();
  await Window.setEffect(
    effect: WindowEffect.mica,
  );

  // Initialize the window manager.
  await windowManager.ensureInitialized();

  // Initialize the shared preferences.
  final prefs = await SharedPreferences.getInstance();

  // Configure the window.
  const windowOptions = WindowOptions(
    size: Size(1000, 800),
    minimumSize: Size(1000, 800),
    center: true,
    titleBarStyle: TitleBarStyle.hidden,

    skipTaskbar: false,
  );

  await windowManager.waitUntilReadyToShow(windowOptions, () async {
    await windowManager.show();
    await windowManager.focus();
  });

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWithValue(prefs),
      ],
      child: const App(),
    ),
  );
}

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeNotifierProvider);
    final locale = ref.watch(localeNotifierProvider);

    return FluentApp.router(
      onGenerateTitle: (context) => S.of(context).appTitle,
      themeMode: themeMode,
      darkTheme: darkTheme,
      theme: lightTheme,
      locale: locale,
      builder: (context, child) {
        final isDarkMode =
            FluentTheme.of(context).brightness == Brightness.dark;
        Window.setEffect(
          effect: WindowEffect.mica,
          dark: isDarkMode,
        );
        return child!;
      },
      localizationsDelegates: const [
        S.delegate,
        FluentLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}
