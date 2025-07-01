// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'updates_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$upgradablePackagesHash() =>
    r'88e75294905f6f7e9e85bb8859a22a3b48303e5e';

/// See also [upgradablePackages].
@ProviderFor(upgradablePackages)
final upgradablePackagesProvider =
    AutoDisposeFutureProvider<List<Package>>.internal(
      upgradablePackages,
      name: r'upgradablePackagesProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$upgradablePackagesHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef UpgradablePackagesRef = AutoDisposeFutureProviderRef<List<Package>>;
String _$updatePackageHash() => r'436ba81016ebc1df38f34fcef981f713d1bce26c';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$UpdatePackage extends BuildlessAutoDisposeAsyncNotifier<void> {
  late final String packageId;

  FutureOr<void> build(String packageId);
}

/// See also [UpdatePackage].
@ProviderFor(UpdatePackage)
const updatePackageProvider = UpdatePackageFamily();

/// See also [UpdatePackage].
class UpdatePackageFamily extends Family<AsyncValue<void>> {
  /// See also [UpdatePackage].
  const UpdatePackageFamily();

  /// See also [UpdatePackage].
  UpdatePackageProvider call(String packageId) {
    return UpdatePackageProvider(packageId);
  }

  @override
  UpdatePackageProvider getProviderOverride(
    covariant UpdatePackageProvider provider,
  ) {
    return call(provider.packageId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'updatePackageProvider';
}

/// See also [UpdatePackage].
class UpdatePackageProvider
    extends AutoDisposeAsyncNotifierProviderImpl<UpdatePackage, void> {
  /// See also [UpdatePackage].
  UpdatePackageProvider(String packageId)
    : this._internal(
        () => UpdatePackage()..packageId = packageId,
        from: updatePackageProvider,
        name: r'updatePackageProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$updatePackageHash,
        dependencies: UpdatePackageFamily._dependencies,
        allTransitiveDependencies:
            UpdatePackageFamily._allTransitiveDependencies,
        packageId: packageId,
      );

  UpdatePackageProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.packageId,
  }) : super.internal();

  final String packageId;

  @override
  FutureOr<void> runNotifierBuild(covariant UpdatePackage notifier) {
    return notifier.build(packageId);
  }

  @override
  Override overrideWith(UpdatePackage Function() create) {
    return ProviderOverride(
      origin: this,
      override: UpdatePackageProvider._internal(
        () => create()..packageId = packageId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        packageId: packageId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<UpdatePackage, void> createElement() {
    return _UpdatePackageProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UpdatePackageProvider && other.packageId == packageId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, packageId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin UpdatePackageRef on AutoDisposeAsyncNotifierProviderRef<void> {
  /// The parameter `packageId` of this provider.
  String get packageId;
}

class _UpdatePackageProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<UpdatePackage, void>
    with UpdatePackageRef {
  _UpdatePackageProviderElement(super.provider);

  @override
  String get packageId => (origin as UpdatePackageProvider).packageId;
}

String _$updateAllPackagesHash() => r'c817d6d61d07fdd28142446f5119b41851234e66';

/// See also [UpdateAllPackages].
@ProviderFor(UpdateAllPackages)
final updateAllPackagesProvider =
    AutoDisposeAsyncNotifierProvider<UpdateAllPackages, void>.internal(
      UpdateAllPackages.new,
      name: r'updateAllPackagesProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$updateAllPackagesHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$UpdateAllPackages = AutoDisposeAsyncNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
