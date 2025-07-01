import 'package:go_router/go_router.dart';
import 'package:winguard/features/installed_apps/installed_apps_page.dart';
import 'package:winguard/features/settings/settings_page.dart';
import 'package:winguard/features/updates/updates_page.dart';
import 'package:winguard/shared/widgets/main_shell.dart';

// This can be expanded later with all the app's routes.
final appRouter = GoRouter(
  initialLocation: '/updates',
  routes: [
    ShellRoute(
      builder: (context, state, child) => MainShell(child: child),
      routes: [
        GoRoute(
          path: '/updates',
          builder: (context, state) => const UpdatesPage(),
        ),
        GoRoute(
          path: '/installed',
          builder: (context, state) => const InstalledAppsPage(),
        ),
        GoRoute(
          path: '/settings',
          builder: (context, state) => const SettingsPage(),
        ),
      ],
    ),
  ],
);
