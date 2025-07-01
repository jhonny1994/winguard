import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:winguard/core/api/winget_service.dart';
import 'package:winguard/shared/models/package.dart';

part 'updates_provider.g.dart';

@riverpod
Future<List<Package>> upgradablePackages(Ref ref) {
  final wingetService = ref.watch(wingetServiceProvider);
  return wingetService.getUpgradablePackages();
}

@riverpod
class UpdatePackage extends _$UpdatePackage {
  @override
  FutureOr<void> build(String packageId) {
    // Initial state
    return null;
  }

  Future<void> updatePackage() async {
    state = const AsyncLoading();

    try {
      final wingetService = ref.read(wingetServiceProvider);
      await wingetService.updatePackage(packageId);

      // Refresh the upgradable packages list after successful update
      ref.invalidate(upgradablePackagesProvider);

      state = const AsyncData(null);
    } on Exception catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}

@riverpod
class UpdateAllPackages extends _$UpdateAllPackages {
  @override
  FutureOr<void> build() {
    // Initial state
    return null;
  }

  Future<void> updateAllPackages() async {
    state = const AsyncLoading();

    try {
      final wingetService = ref.read(wingetServiceProvider);
      await wingetService.updateAllPackages();

      // Refresh the upgradable packages list after successful update
      ref.invalidate(upgradablePackagesProvider);

      state = const AsyncData(null);
    } on Exception catch (error, stackTrace) {
      state = AsyncError(error, stackTrace);
    }
  }
}
