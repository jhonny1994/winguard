// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Package {

@JsonKey(name: 'PackageIdentifier') String get id;@JsonKey(name: 'Name') String get name;@JsonKey(name: 'Version') String get version;@JsonKey(name: 'AvailableVersion') String? get newVersion;@JsonKey(name: 'Publisher') String? get publisher;
/// Create a copy of Package
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PackageCopyWith<Package> get copyWith => _$PackageCopyWithImpl<Package>(this as Package, _$identity);

  /// Serializes this Package to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Package&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.version, version) || other.version == version)&&(identical(other.newVersion, newVersion) || other.newVersion == newVersion)&&(identical(other.publisher, publisher) || other.publisher == publisher));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,version,newVersion,publisher);

@override
String toString() {
  return 'Package(id: $id, name: $name, version: $version, newVersion: $newVersion, publisher: $publisher)';
}


}

/// @nodoc
abstract mixin class $PackageCopyWith<$Res>  {
  factory $PackageCopyWith(Package value, $Res Function(Package) _then) = _$PackageCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'PackageIdentifier') String id,@JsonKey(name: 'Name') String name,@JsonKey(name: 'Version') String version,@JsonKey(name: 'AvailableVersion') String? newVersion,@JsonKey(name: 'Publisher') String? publisher
});




}
/// @nodoc
class _$PackageCopyWithImpl<$Res>
    implements $PackageCopyWith<$Res> {
  _$PackageCopyWithImpl(this._self, this._then);

  final Package _self;
  final $Res Function(Package) _then;

/// Create a copy of Package
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? version = null,Object? newVersion = freezed,Object? publisher = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,newVersion: freezed == newVersion ? _self.newVersion : newVersion // ignore: cast_nullable_to_non_nullable
as String?,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Package implements Package {
  const _Package({@JsonKey(name: 'PackageIdentifier') required this.id, @JsonKey(name: 'Name') required this.name, @JsonKey(name: 'Version') required this.version, @JsonKey(name: 'AvailableVersion') this.newVersion, @JsonKey(name: 'Publisher') this.publisher});
  factory _Package.fromJson(Map<String, dynamic> json) => _$PackageFromJson(json);

@override@JsonKey(name: 'PackageIdentifier') final  String id;
@override@JsonKey(name: 'Name') final  String name;
@override@JsonKey(name: 'Version') final  String version;
@override@JsonKey(name: 'AvailableVersion') final  String? newVersion;
@override@JsonKey(name: 'Publisher') final  String? publisher;

/// Create a copy of Package
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PackageCopyWith<_Package> get copyWith => __$PackageCopyWithImpl<_Package>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PackageToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Package&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.version, version) || other.version == version)&&(identical(other.newVersion, newVersion) || other.newVersion == newVersion)&&(identical(other.publisher, publisher) || other.publisher == publisher));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,version,newVersion,publisher);

@override
String toString() {
  return 'Package(id: $id, name: $name, version: $version, newVersion: $newVersion, publisher: $publisher)';
}


}

/// @nodoc
abstract mixin class _$PackageCopyWith<$Res> implements $PackageCopyWith<$Res> {
  factory _$PackageCopyWith(_Package value, $Res Function(_Package) _then) = __$PackageCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'PackageIdentifier') String id,@JsonKey(name: 'Name') String name,@JsonKey(name: 'Version') String version,@JsonKey(name: 'AvailableVersion') String? newVersion,@JsonKey(name: 'Publisher') String? publisher
});




}
/// @nodoc
class __$PackageCopyWithImpl<$Res>
    implements _$PackageCopyWith<$Res> {
  __$PackageCopyWithImpl(this._self, this._then);

  final _Package _self;
  final $Res Function(_Package) _then;

/// Create a copy of Package
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? version = null,Object? newVersion = freezed,Object? publisher = freezed,}) {
  return _then(_Package(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,newVersion: freezed == newVersion ? _self.newVersion : newVersion // ignore: cast_nullable_to_non_nullable
as String?,publisher: freezed == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
