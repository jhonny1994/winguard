// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PackageDetails {

// Fields from Package
@JsonKey(name: 'PackageIdentifier') String get id;@JsonKey(name: 'Name') String get name;@JsonKey(name: 'Version') String get version;@JsonKey(name: 'AvailableVersion') String? get newVersion;@JsonKey(name: 'Publisher') String? get publisher;// Richer fields for PackageDetails
@JsonKey(name: 'PackageIcon') String? get packageIcon;@JsonKey(name: 'Author') String? get author;@JsonKey(name: 'Description') String? get description;@JsonKey(name: 'Homepage') String? get homepage;@JsonKey(name: 'License') String? get license;@JsonKey(name: 'LicenseUrl') String? get licenseUrl;@JsonKey(name: 'PublisherUrl') String? get publisherUrl;@JsonKey(name: 'PublisherSupportUrl') String? get publisherSupportUrl;@JsonKey(name: 'ReleaseNotes') String? get releaseNotes;@JsonKey(name: 'ReleaseNotesUrl') String? get releaseNotesUrl;@JsonKey(name: 'Copyright') String? get copyright;@JsonKey(name: 'CopyrightUrl') String? get copyrightUrl;@JsonKey(name: 'Tags') List<String> get tags;@JsonKey(name: 'Installers') List<Installer> get installers;
/// Create a copy of PackageDetails
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageDetailsCopyWith<PackageDetails> get copyWith => _$PackageDetailsCopyWithImpl<PackageDetails>(this as PackageDetails, _$identity);

  /// Serializes this PackageDetails to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PackageDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.version, version) || other.version == version)&&(identical(other.newVersion, newVersion) || other.newVersion == newVersion)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.packageIcon, packageIcon) || other.packageIcon == packageIcon)&&(identical(other.author, author) || other.author == author)&&(identical(other.description, description) || other.description == description)&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.license, license) || other.license == license)&&(identical(other.licenseUrl, licenseUrl) || other.licenseUrl == licenseUrl)&&(identical(other.publisherUrl, publisherUrl) || other.publisherUrl == publisherUrl)&&(identical(other.publisherSupportUrl, publisherSupportUrl) || other.publisherSupportUrl == publisherSupportUrl)&&(identical(other.releaseNotes, releaseNotes) || other.releaseNotes == releaseNotes)&&(identical(other.releaseNotesUrl, releaseNotesUrl) || other.releaseNotesUrl == releaseNotesUrl)&&(identical(other.copyright, copyright) || other.copyright == copyright)&&(identical(other.copyrightUrl, copyrightUrl) || other.copyrightUrl == copyrightUrl)&&const DeepCollectionEquality().equals(other.tags, tags)&&const DeepCollectionEquality().equals(other.installers, installers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,version,newVersion,publisher,packageIcon,author,description,homepage,license,licenseUrl,publisherUrl,publisherSupportUrl,releaseNotes,releaseNotesUrl,copyright,copyrightUrl,const DeepCollectionEquality().hash(tags),const DeepCollectionEquality().hash(installers)]);

@override
String toString() {
  return 'PackageDetails(id: $id, name: $name, version: $version, newVersion: $newVersion, publisher: $publisher, packageIcon: $packageIcon, author: $author, description: $description, homepage: $homepage, license: $license, licenseUrl: $licenseUrl, publisherUrl: $publisherUrl, publisherSupportUrl: $publisherSupportUrl, releaseNotes: $releaseNotes, releaseNotesUrl: $releaseNotesUrl, copyright: $copyright, copyrightUrl: $copyrightUrl, tags: $tags, installers: $installers)';
}


}

/// @nodoc
abstract mixin class $PackageDetailsCopyWith<$Res>  {
  factory $PackageDetailsCopyWith(PackageDetails value, $Res Function(PackageDetails) _then) = _$PackageDetailsCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'PackageIdentifier') String id,@JsonKey(name: 'Name') String name,@JsonKey(name: 'Version') String version,@JsonKey(name: 'AvailableVersion') String? newVersion,@JsonKey(name: 'Publisher') String? publisher,@JsonKey(name: 'PackageIcon') String? packageIcon,@JsonKey(name: 'Author') String? author,@JsonKey(name: 'Description') String? description,@JsonKey(name: 'Homepage') String? homepage,@JsonKey(name: 'License') String? license,@JsonKey(name: 'LicenseUrl') String? licenseUrl,@JsonKey(name: 'PublisherUrl') String? publisherUrl,@JsonKey(name: 'PublisherSupportUrl') String? publisherSupportUrl,@JsonKey(name: 'ReleaseNotes') String? releaseNotes,@JsonKey(name: 'ReleaseNotesUrl') String? releaseNotesUrl,@JsonKey(name: 'Copyright') String? copyright,@JsonKey(name: 'CopyrightUrl') String? copyrightUrl,@JsonKey(name: 'Tags') List<String> tags,@JsonKey(name: 'Installers') List<Installer> installers
});




}
/// @nodoc
class _$PackageDetailsCopyWithImpl<$Res>
    implements $PackageDetailsCopyWith<$Res> {
  _$PackageDetailsCopyWithImpl(this._self, this._then);

  final PackageDetails _self;
  final $Res Function(PackageDetails) _then;

/// Create a copy of PackageDetails
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? version = null,Object? newVersion = freezed,Object? publisher = freezed,Object? packageIcon = freezed,Object? author = freezed,Object? description = freezed,Object? homepage = freezed,Object? license = freezed,Object? licenseUrl = freezed,Object? publisherUrl = freezed,Object? publisherSupportUrl = freezed,Object? releaseNotes = freezed,Object? releaseNotesUrl = freezed,Object? copyright = freezed,Object? copyrightUrl = freezed,Object? tags = null,Object? installers = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,newVersion: freezed == newVersion ? _self.newVersion : newVersion // ignore: cast_nullable_to_non_nullable
as String?,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String?,packageIcon: freezed == packageIcon ? _self.packageIcon : packageIcon // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,homepage: freezed == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String?,license: freezed == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as String?,licenseUrl: freezed == licenseUrl ? _self.licenseUrl : licenseUrl // ignore: cast_nullable_to_non_nullable
as String?,publisherUrl: freezed == publisherUrl ? _self.publisherUrl : publisherUrl // ignore: cast_nullable_to_non_nullable
as String?,publisherSupportUrl: freezed == publisherSupportUrl ? _self.publisherSupportUrl : publisherSupportUrl // ignore: cast_nullable_to_non_nullable
as String?,releaseNotes: freezed == releaseNotes ? _self.releaseNotes : releaseNotes // ignore: cast_nullable_to_non_nullable
as String?,releaseNotesUrl: freezed == releaseNotesUrl ? _self.releaseNotesUrl : releaseNotesUrl // ignore: cast_nullable_to_non_nullable
as String?,copyright: freezed == copyright ? _self.copyright : copyright // ignore: cast_nullable_to_non_nullable
as String?,copyrightUrl: freezed == copyrightUrl ? _self.copyrightUrl : copyrightUrl // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self.tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,installers: null == installers ? _self.installers : installers // ignore: cast_nullable_to_non_nullable
as List<Installer>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _PackageDetails extends PackageDetails {
  const _PackageDetails({@JsonKey(name: 'PackageIdentifier') required this.id, @JsonKey(name: 'Name') required this.name, @JsonKey(name: 'Version') required this.version, @JsonKey(name: 'AvailableVersion') this.newVersion, @JsonKey(name: 'Publisher') this.publisher, @JsonKey(name: 'PackageIcon') this.packageIcon, @JsonKey(name: 'Author') this.author, @JsonKey(name: 'Description') this.description, @JsonKey(name: 'Homepage') this.homepage, @JsonKey(name: 'License') this.license, @JsonKey(name: 'LicenseUrl') this.licenseUrl, @JsonKey(name: 'PublisherUrl') this.publisherUrl, @JsonKey(name: 'PublisherSupportUrl') this.publisherSupportUrl, @JsonKey(name: 'ReleaseNotes') this.releaseNotes, @JsonKey(name: 'ReleaseNotesUrl') this.releaseNotesUrl, @JsonKey(name: 'Copyright') this.copyright, @JsonKey(name: 'CopyrightUrl') this.copyrightUrl, @JsonKey(name: 'Tags') final  List<String> tags = const [], @JsonKey(name: 'Installers') final  List<Installer> installers = const []}): _tags = tags,_installers = installers,super._();
  factory _PackageDetails.fromJson(Map<String, dynamic> json) => _$PackageDetailsFromJson(json);

// Fields from Package
@override@JsonKey(name: 'PackageIdentifier') final  String id;
@override@JsonKey(name: 'Name') final  String name;
@override@JsonKey(name: 'Version') final  String version;
@override@JsonKey(name: 'AvailableVersion') final  String? newVersion;
@override@JsonKey(name: 'Publisher') final  String? publisher;
// Richer fields for PackageDetails
@override@JsonKey(name: 'PackageIcon') final  String? packageIcon;
@override@JsonKey(name: 'Author') final  String? author;
@override@JsonKey(name: 'Description') final  String? description;
@override@JsonKey(name: 'Homepage') final  String? homepage;
@override@JsonKey(name: 'License') final  String? license;
@override@JsonKey(name: 'LicenseUrl') final  String? licenseUrl;
@override@JsonKey(name: 'PublisherUrl') final  String? publisherUrl;
@override@JsonKey(name: 'PublisherSupportUrl') final  String? publisherSupportUrl;
@override@JsonKey(name: 'ReleaseNotes') final  String? releaseNotes;
@override@JsonKey(name: 'ReleaseNotesUrl') final  String? releaseNotesUrl;
@override@JsonKey(name: 'Copyright') final  String? copyright;
@override@JsonKey(name: 'CopyrightUrl') final  String? copyrightUrl;
 final  List<String> _tags;
@override@JsonKey(name: 'Tags') List<String> get tags {
  if (_tags is EqualUnmodifiableListView) return _tags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_tags);
}

 final  List<Installer> _installers;
@override@JsonKey(name: 'Installers') List<Installer> get installers {
  if (_installers is EqualUnmodifiableListView) return _installers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_installers);
}


/// Create a copy of PackageDetails
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageDetailsCopyWith<_PackageDetails> get copyWith => __$PackageDetailsCopyWithImpl<_PackageDetails>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageDetailsToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PackageDetails&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.version, version) || other.version == version)&&(identical(other.newVersion, newVersion) || other.newVersion == newVersion)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.packageIcon, packageIcon) || other.packageIcon == packageIcon)&&(identical(other.author, author) || other.author == author)&&(identical(other.description, description) || other.description == description)&&(identical(other.homepage, homepage) || other.homepage == homepage)&&(identical(other.license, license) || other.license == license)&&(identical(other.licenseUrl, licenseUrl) || other.licenseUrl == licenseUrl)&&(identical(other.publisherUrl, publisherUrl) || other.publisherUrl == publisherUrl)&&(identical(other.publisherSupportUrl, publisherSupportUrl) || other.publisherSupportUrl == publisherSupportUrl)&&(identical(other.releaseNotes, releaseNotes) || other.releaseNotes == releaseNotes)&&(identical(other.releaseNotesUrl, releaseNotesUrl) || other.releaseNotesUrl == releaseNotesUrl)&&(identical(other.copyright, copyright) || other.copyright == copyright)&&(identical(other.copyrightUrl, copyrightUrl) || other.copyrightUrl == copyrightUrl)&&const DeepCollectionEquality().equals(other._tags, _tags)&&const DeepCollectionEquality().equals(other._installers, _installers));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,name,version,newVersion,publisher,packageIcon,author,description,homepage,license,licenseUrl,publisherUrl,publisherSupportUrl,releaseNotes,releaseNotesUrl,copyright,copyrightUrl,const DeepCollectionEquality().hash(_tags),const DeepCollectionEquality().hash(_installers)]);

@override
String toString() {
  return 'PackageDetails(id: $id, name: $name, version: $version, newVersion: $newVersion, publisher: $publisher, packageIcon: $packageIcon, author: $author, description: $description, homepage: $homepage, license: $license, licenseUrl: $licenseUrl, publisherUrl: $publisherUrl, publisherSupportUrl: $publisherSupportUrl, releaseNotes: $releaseNotes, releaseNotesUrl: $releaseNotesUrl, copyright: $copyright, copyrightUrl: $copyrightUrl, tags: $tags, installers: $installers)';
}


}

/// @nodoc
abstract mixin class _$PackageDetailsCopyWith<$Res> implements $PackageDetailsCopyWith<$Res> {
  factory _$PackageDetailsCopyWith(_PackageDetails value, $Res Function(_PackageDetails) _then) = __$PackageDetailsCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'PackageIdentifier') String id,@JsonKey(name: 'Name') String name,@JsonKey(name: 'Version') String version,@JsonKey(name: 'AvailableVersion') String? newVersion,@JsonKey(name: 'Publisher') String? publisher,@JsonKey(name: 'PackageIcon') String? packageIcon,@JsonKey(name: 'Author') String? author,@JsonKey(name: 'Description') String? description,@JsonKey(name: 'Homepage') String? homepage,@JsonKey(name: 'License') String? license,@JsonKey(name: 'LicenseUrl') String? licenseUrl,@JsonKey(name: 'PublisherUrl') String? publisherUrl,@JsonKey(name: 'PublisherSupportUrl') String? publisherSupportUrl,@JsonKey(name: 'ReleaseNotes') String? releaseNotes,@JsonKey(name: 'ReleaseNotesUrl') String? releaseNotesUrl,@JsonKey(name: 'Copyright') String? copyright,@JsonKey(name: 'CopyrightUrl') String? copyrightUrl,@JsonKey(name: 'Tags') List<String> tags,@JsonKey(name: 'Installers') List<Installer> installers
});




}
/// @nodoc
class __$PackageDetailsCopyWithImpl<$Res>
    implements _$PackageDetailsCopyWith<$Res> {
  __$PackageDetailsCopyWithImpl(this._self, this._then);

  final _PackageDetails _self;
  final $Res Function(_PackageDetails) _then;

/// Create a copy of PackageDetails
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? version = null,Object? newVersion = freezed,Object? publisher = freezed,Object? packageIcon = freezed,Object? author = freezed,Object? description = freezed,Object? homepage = freezed,Object? license = freezed,Object? licenseUrl = freezed,Object? publisherUrl = freezed,Object? publisherSupportUrl = freezed,Object? releaseNotes = freezed,Object? releaseNotesUrl = freezed,Object? copyright = freezed,Object? copyrightUrl = freezed,Object? tags = null,Object? installers = null,}) {
  return _then(_PackageDetails(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,newVersion: freezed == newVersion ? _self.newVersion : newVersion // ignore: cast_nullable_to_non_nullable
as String?,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String?,packageIcon: freezed == packageIcon ? _self.packageIcon : packageIcon // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,homepage: freezed == homepage ? _self.homepage : homepage // ignore: cast_nullable_to_non_nullable
as String?,license: freezed == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as String?,licenseUrl: freezed == licenseUrl ? _self.licenseUrl : licenseUrl // ignore: cast_nullable_to_non_nullable
as String?,publisherUrl: freezed == publisherUrl ? _self.publisherUrl : publisherUrl // ignore: cast_nullable_to_non_nullable
as String?,publisherSupportUrl: freezed == publisherSupportUrl ? _self.publisherSupportUrl : publisherSupportUrl // ignore: cast_nullable_to_non_nullable
as String?,releaseNotes: freezed == releaseNotes ? _self.releaseNotes : releaseNotes // ignore: cast_nullable_to_non_nullable
as String?,releaseNotesUrl: freezed == releaseNotesUrl ? _self.releaseNotesUrl : releaseNotesUrl // ignore: cast_nullable_to_non_nullable
as String?,copyright: freezed == copyright ? _self.copyright : copyright // ignore: cast_nullable_to_non_nullable
as String?,copyrightUrl: freezed == copyrightUrl ? _self.copyrightUrl : copyrightUrl // ignore: cast_nullable_to_non_nullable
as String?,tags: null == tags ? _self._tags : tags // ignore: cast_nullable_to_non_nullable
as List<String>,installers: null == installers ? _self._installers : installers // ignore: cast_nullable_to_non_nullable
as List<Installer>,
  ));
}


}

// dart format on
