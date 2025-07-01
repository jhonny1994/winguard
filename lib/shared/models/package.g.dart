// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Package _$PackageFromJson(Map<String, dynamic> json) => _Package(
  id: json['PackageIdentifier'] as String,
  name: json['Name'] as String,
  version: json['Version'] as String,
  newVersion: json['AvailableVersion'] as String?,
  publisher: json['Publisher'] as String?,
);

Map<String, dynamic> _$PackageToJson(_Package instance) => <String, dynamic>{
  'PackageIdentifier': instance.id,
  'Name': instance.name,
  'Version': instance.version,
  'AvailableVersion': instance.newVersion,
  'Publisher': instance.publisher,
};
