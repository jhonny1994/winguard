// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_icon_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$packageIconHash() => r'9a123fcec39307596eb09ed4c212f14d33492495';

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

/// See also [packageIcon].
@ProviderFor(packageIcon)
const packageIconProvider = PackageIconFamily();

/// See also [packageIcon].
class PackageIconFamily extends Family<AsyncValue<String?>> {
  /// See also [packageIcon].
  const PackageIconFamily();

  /// See also [packageIcon].
  PackageIconProvider call(String packageId) {
    return PackageIconProvider(packageId);
  }

  @override
  PackageIconProvider getProviderOverride(
    covariant PackageIconProvider provider,
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
  String? get name => r'packageIconProvider';
}

/// See also [packageIcon].
class PackageIconProvider extends AutoDisposeFutureProvider<String?> {
  /// See also [packageIcon].
  PackageIconProvider(String packageId)
    : this._internal(
        (ref) => packageIcon(ref as PackageIconRef, packageId),
        from: packageIconProvider,
        name: r'packageIconProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$packageIconHash,
        dependencies: PackageIconFamily._dependencies,
        allTransitiveDependencies: PackageIconFamily._allTransitiveDependencies,
        packageId: packageId,
      );

  PackageIconProvider._internal(
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
  Override overrideWith(
    FutureOr<String?> Function(PackageIconRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PackageIconProvider._internal(
        (ref) => create(ref as PackageIconRef),
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
  AutoDisposeFutureProviderElement<String?> createElement() {
    return _PackageIconProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PackageIconProvider && other.packageId == packageId;
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
mixin PackageIconRef on AutoDisposeFutureProviderRef<String?> {
  /// The parameter `packageId` of this provider.
  String get packageId;
}

class _PackageIconProviderElement
    extends AutoDisposeFutureProviderElement<String?>
    with PackageIconRef {
  _PackageIconProviderElement(super.provider);

  @override
  String get packageId => (origin as PackageIconProvider).packageId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
