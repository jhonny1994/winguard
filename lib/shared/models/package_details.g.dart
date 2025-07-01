// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PackageDetails _$PackageDetailsFromJson(Map<String, dynamic> json) =>
    _PackageDetails(
      id: json['PackageIdentifier'] as String,
      name: json['Name'] as String,
      version: json['Version'] as String,
      newVersion: json['AvailableVersion'] as String?,
      publisher: json['Publisher'] as String?,
      packageIcon: json['PackageIcon'] as String?,
      author: json['Author'] as String?,
      description: json['Description'] as String?,
      homepage: json['Homepage'] as String?,
      license: json['License'] as String?,
      licenseUrl: json['LicenseUrl'] as String?,
      publisherUrl: json['PublisherUrl'] as String?,
      publisherSupportUrl: json['PublisherSupportUrl'] as String?,
      releaseNotes: json['ReleaseNotes'] as String?,
      releaseNotesUrl: json['ReleaseNotesUrl'] as String?,
      copyright: json['Copyright'] as String?,
      copyrightUrl: json['CopyrightUrl'] as String?,
      tags:
          (json['Tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
          const [],
      installers:
          (json['Installers'] as List<dynamic>?)
              ?.map((e) => Installer.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$PackageDetailsToJson(_PackageDetails instance) =>
    <String, dynamic>{
      'PackageIdentifier': instance.id,
      'Name': instance.name,
      'Version': instance.version,
      'AvailableVersion': instance.newVersion,
      'Publisher': instance.publisher,
      'PackageIcon': instance.packageIcon,
      'Author': instance.author,
      'Description': instance.description,
      'Homepage': instance.homepage,
      'License': instance.license,
      'LicenseUrl': instance.licenseUrl,
      'PublisherUrl': instance.publisherUrl,
      'PublisherSupportUrl': instance.publisherSupportUrl,
      'ReleaseNotes': instance.releaseNotes,
      'ReleaseNotesUrl': instance.releaseNotesUrl,
      'Copyright': instance.copyright,
      'CopyrightUrl': instance.copyrightUrl,
      'Tags': instance.tags,
      'Installers': instance.installers,
    };
