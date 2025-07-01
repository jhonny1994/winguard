import 'package:freezed_annotation/freezed_annotation.dart';

part 'installer.freezed.dart';
part 'installer.g.dart';

@freezed
abstract class Installer with _$Installer {
  const factory Installer({
    @JsonKey(name: 'InstallerIdentifier') String? id,
    @JsonKey(name: 'InstallerUrl') String? installerUrl,
    @JsonKey(name: 'InstallerType') String? installerType,
    @JsonKey(name: 'InstallerSha256') String? installerSha256,
    @JsonKey(name: 'InstallerLocale') String? locale,
    @JsonKey(name: 'Architecture') String? architecture,
    @JsonKey(name: 'ProductCode') String? productCode,
  }) = _Installer;

  factory Installer.fromJson(Map<String, dynamic> json) =>
      _$InstallerFromJson(json);
}
