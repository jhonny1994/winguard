import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:winguard/shared/models/installer.dart';

part 'package_details.freezed.dart';
part 'package_details.g.dart';

@freezed
abstract class PackageDetails with _$PackageDetails {
  const factory PackageDetails({
    // Fields from Package
    @JsonKey(name: 'PackageIdentifier') required String id,
    @JsonKey(name: 'Name') required String name,
    @JsonKey(name: 'Version') required String version,
    @JsonKey(name: 'AvailableVersion') String? newVersion,
    @JsonKey(name: 'Publisher') String? publisher,

    // Richer fields for PackageDetails
    @JsonKey(name: 'PackageIcon') String? packageIcon,
    @JsonKey(name: 'Author') String? author,
    @JsonKey(name: 'Description') String? description,
    @JsonKey(name: 'Homepage') String? homepage,
    @JsonKey(name: 'License') String? license,
    @JsonKey(name: 'LicenseUrl') String? licenseUrl,
    @JsonKey(name: 'PublisherUrl') String? publisherUrl,
    @JsonKey(name: 'PublisherSupportUrl') String? publisherSupportUrl,
    @JsonKey(name: 'ReleaseNotes') String? releaseNotes,
    @JsonKey(name: 'ReleaseNotesUrl') String? releaseNotesUrl,
    @JsonKey(name: 'Copyright') String? copyright,
    @JsonKey(name: 'CopyrightUrl') String? copyrightUrl,
    @Default([]) @JsonKey(name: 'Tags') List<String> tags,
    @Default([]) @JsonKey(name: 'Installers') List<Installer> installers,
  }) = _PackageDetails;
  const PackageDetails._();

  factory PackageDetails.fromJson(Map<String, dynamic> json) =>
      _$PackageDetailsFromJson(json);

  List<String> get allUrls {
    final urls = <String>{}; // Use a Set to avoid duplicates
    if (homepage != null) urls.add(homepage!);
    if (licenseUrl != null) urls.add(licenseUrl!);
    if (publisherUrl != null) urls.add(publisherUrl!);
    if (publisherSupportUrl != null) urls.add(publisherSupportUrl!);
    if (releaseNotesUrl != null) urls.add(releaseNotesUrl!);
    if (copyrightUrl != null) urls.add(copyrightUrl!);
    for (final installer in installers) {
      if (installer.installerUrl != null) {
        urls.add(installer.installerUrl!);
      }
    }
    return urls.toList();
  }
}
