import 'package:freezed_annotation/freezed_annotation.dart';

part 'package.freezed.dart';
part 'package.g.dart';

@freezed
abstract class Package with _$Package {
  const factory Package({
    @JsonKey(name: 'PackageIdentifier') required String id,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'Version') required String version,
    @JsonKey(name: 'AvailableVersion') String? newVersion,
    @JsonKey(name: 'Publisher') String? publisher,
  }) = _Package;

  factory Package.fromJson(Map<String, dynamic> json) =>
      _$PackageFromJson(json);
}
