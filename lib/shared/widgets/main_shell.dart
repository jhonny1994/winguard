import 'package:fluent_ui/fluent_ui.dart';
import 'package:go_router/go_router.dart';
import 'package:window_manager/window_manager.dart';
import 'package:winguard/core/intl/generated/l10n.dart';
import 'package:winguard/shared/models/navigation_item.dart';

class MainShell extends StatefulWidget {
  const MainShell({required this.child, super.key});
  final Widget child;
  @override
  State<MainShell> createState() => _MainShellState();
}

class _MainShellState extends State<MainShell> {
  // Single source of truth for navigation items
  late final List<NavigationItem> _navigationItems = [
    (
      path: '/updates',
      label: (context) => S.of(context).updatesPageTitle,
      icon: FluentIcons.update_restore,
    ),
    (
      path: '/installed',
      label: (context) => S.of(context).installedAppsPageTitle,
      icon: FluentIcons.apps_content,
    ),
  ];

  // Footer items are managed separately
  late final List<NavigationItem> _footerItems = [
    (
      path: '/settings',
      label: (context) => S.of(context).settingsPageTitle,
      icon: FluentIcons.settings,
    ),
  ];

  int _calculateSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).matchedLocation;
    // Find the index in the main navigation items
    final index = _navigationItems.indexWhere(
      (item) => location.startsWith(item.path),
    );
    if (index != -1) return index;

    // Find the index in the footer items
    final footerIndex = _footerItems.indexWhere(
      (item) => location.startsWith(item.path),
    );
    if (footerIndex != -1) return _navigationItems.length + footerIndex;

    return 0;
  }

  @override
  Widget build(BuildContext context) {
    return NavigationView(
      appBar: NavigationAppBar(
        automaticallyImplyLeading: false,
        title: DragToMoveArea(
          child: Align(
            alignment: AlignmentDirectional.centerStart,
            child: Text(S.of(context).appTitle),
          ),
        ),
        actions: const WindowCaption(),
      ),
      pane: NavigationPane(
        selected: _calculateSelectedIndex(context),
        onChanged: (index) {
          if (index < _navigationItems.length) {
            context.go(_navigationItems[index].path);
          } else {
            context.go(_footerItems[index - _navigationItems.length].path);
          }
        },
        items: _navigationItems.map<NavigationPaneItem>((item) {
          return PaneItem(
            icon: Icon(item.icon),
            title: Text(item.label(context)),
            body: const SizedBox.shrink(),
          );
        }).toList(),
        footerItems: <NavigationPaneItem>[
          PaneItemSeparator(),
          ..._footerItems.map((item) {
            return PaneItem(
              icon: Icon(item.icon),
              title: Text(item.label(context)),
              body: const SizedBox.shrink(),
            );
          }),
        ],
      ),
      paneBodyBuilder: (item, body) {
        return widget.child;
      },
    );
  }
}
