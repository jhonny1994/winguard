import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:winguard/core/api/winget_service.dart';
import 'package:winguard/shared/models/package.dart';

part 'installed_apps_provider.g.dart';

@riverpod
Future<List<Package>> installedPackages(Ref ref) {
  final wingetService = ref.watch(wingetServiceProvider);
  return wingetService.getInstalledPackages();
}
