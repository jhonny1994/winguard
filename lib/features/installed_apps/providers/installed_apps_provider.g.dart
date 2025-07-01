// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'installed_apps_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$installedPackagesHash() => r'f600f8a01400a8f498c3520d1de0a3647e3b2e88';

/// See also [installedPackages].
@ProviderFor(installedPackages)
final installedPackagesProvider =
    AutoDisposeFutureProvider<List<Package>>.internal(
      installedPackages,
      name: r'installedPackagesProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$installedPackagesHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef InstalledPackagesRef = AutoDisposeFutureProviderRef<List<Package>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
