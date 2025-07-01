// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'installer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Installer _$InstallerFromJson(Map<String, dynamic> json) => _Installer(
  id: json['InstallerIdentifier'] as String?,
  installerUrl: json['InstallerUrl'] as String?,
  installerType: json['InstallerType'] as String?,
  installerSha256: json['InstallerSha256'] as String?,
  locale: json['InstallerLocale'] as String?,
  architecture: json['Architecture'] as String?,
  productCode: json['ProductCode'] as String?,
);

Map<String, dynamic> _$InstallerToJson(_Installer instance) =>
    <String, dynamic>{
      'InstallerIdentifier': instance.id,
      'InstallerUrl': instance.installerUrl,
      'InstallerType': instance.installerType,
      'InstallerSha256': instance.installerSha256,
      'InstallerLocale': instance.locale,
      'Architecture': instance.architecture,
      'ProductCode': instance.productCode,
    };
