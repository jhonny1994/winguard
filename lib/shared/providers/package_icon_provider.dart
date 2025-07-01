import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:winguard/core/api/winget_service.dart';

part 'package_icon_provider.g.dart';

@riverpod
Future<String?> packageIcon(
  Ref ref,
  String packageId,
) {
  final wingetService = ref.watch(wingetServiceProvider);
  return wingetService.getIconUrl(packageId);
}
