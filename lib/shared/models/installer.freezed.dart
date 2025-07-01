// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'installer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Installer {

@JsonKey(name: 'InstallerIdentifier') String? get id;@JsonKey(name: 'InstallerUrl') String? get installerUrl;@JsonKey(name: 'InstallerType') String? get installerType;@JsonKey(name: 'InstallerSha256') String? get installerSha256;@JsonKey(name: 'InstallerLocale') String? get locale;@JsonKey(name: 'Architecture') String? get architecture;@JsonKey(name: 'ProductCode') String? get productCode;
/// Create a copy of Installer
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InstallerCopyWith<Installer> get copyWith => _$InstallerCopyWithImpl<Installer>(this as Installer, _$identity);

  /// Serializes this Installer to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Installer&&(identical(other.id, id) || other.id == id)&&(identical(other.installerUrl, installerUrl) || other.installerUrl == installerUrl)&&(identical(other.installerType, installerType) || other.installerType == installerType)&&(identical(other.installerSha256, installerSha256) || other.installerSha256 == installerSha256)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.architecture, architecture) || other.architecture == architecture)&&(identical(other.productCode, productCode) || other.productCode == productCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,installerUrl,installerType,installerSha256,locale,architecture,productCode);

@override
String toString() {
  return 'Installer(id: $id, installerUrl: $installerUrl, installerType: $installerType, installerSha256: $installerSha256, locale: $locale, architecture: $architecture, productCode: $productCode)';
}


}

/// @nodoc
abstract mixin class $InstallerCopyWith<$Res>  {
  factory $InstallerCopyWith(Installer value, $Res Function(Installer) _then) = _$InstallerCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'InstallerIdentifier') String? id,@JsonKey(name: 'InstallerUrl') String? installerUrl,@JsonKey(name: 'InstallerType') String? installerType,@JsonKey(name: 'InstallerSha256') String? installerSha256,@JsonKey(name: 'InstallerLocale') String? locale,@JsonKey(name: 'Architecture') String? architecture,@JsonKey(name: 'ProductCode') String? productCode
});




}
/// @nodoc
class _$InstallerCopyWithImpl<$Res>
    implements $InstallerCopyWith<$Res> {
  _$InstallerCopyWithImpl(this._self, this._then);

  final Installer _self;
  final $Res Function(Installer) _then;

/// Create a copy of Installer
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? installerUrl = freezed,Object? installerType = freezed,Object? installerSha256 = freezed,Object? locale = freezed,Object? architecture = freezed,Object? productCode = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,installerUrl: freezed == installerUrl ? _self.installerUrl : installerUrl // ignore: cast_nullable_to_non_nullable
as String?,installerType: freezed == installerType ? _self.installerType : installerType // ignore: cast_nullable_to_non_nullable
as String?,installerSha256: freezed == installerSha256 ? _self.installerSha256 : installerSha256 // ignore: cast_nullable_to_non_nullable
as String?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,architecture: freezed == architecture ? _self.architecture : architecture // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Installer implements Installer {
  const _Installer({@JsonKey(name: 'InstallerIdentifier') this.id, @JsonKey(name: 'InstallerUrl') this.installerUrl, @JsonKey(name: 'InstallerType') this.installerType, @JsonKey(name: 'InstallerSha256') this.installerSha256, @JsonKey(name: 'InstallerLocale') this.locale, @JsonKey(name: 'Architecture') this.architecture, @JsonKey(name: 'ProductCode') this.productCode});
  factory _Installer.fromJson(Map<String, dynamic> json) => _$InstallerFromJson(json);

@override@JsonKey(name: 'InstallerIdentifier') final  String? id;
@override@JsonKey(name: 'InstallerUrl') final  String? installerUrl;
@override@JsonKey(name: 'InstallerType') final  String? installerType;
@override@JsonKey(name: 'InstallerSha256') final  String? installerSha256;
@override@JsonKey(name: 'InstallerLocale') final  String? locale;
@override@JsonKey(name: 'Architecture') final  String? architecture;
@override@JsonKey(name: 'ProductCode') final  String? productCode;

/// Create a copy of Installer
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InstallerCopyWith<_Installer> get copyWith => __$InstallerCopyWithImpl<_Installer>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InstallerToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Installer&&(identical(other.id, id) || other.id == id)&&(identical(other.installerUrl, installerUrl) || other.installerUrl == installerUrl)&&(identical(other.installerType, installerType) || other.installerType == installerType)&&(identical(other.installerSha256, installerSha256) || other.installerSha256 == installerSha256)&&(identical(other.locale, locale) || other.locale == locale)&&(identical(other.architecture, architecture) || other.architecture == architecture)&&(identical(other.productCode, productCode) || other.productCode == productCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,installerUrl,installerType,installerSha256,locale,architecture,productCode);

@override
String toString() {
  return 'Installer(id: $id, installerUrl: $installerUrl, installerType: $installerType, installerSha256: $installerSha256, locale: $locale, architecture: $architecture, productCode: $productCode)';
}


}

/// @nodoc
abstract mixin class _$InstallerCopyWith<$Res> implements $InstallerCopyWith<$Res> {
  factory _$InstallerCopyWith(_Installer value, $Res Function(_Installer) _then) = __$InstallerCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'InstallerIdentifier') String? id,@JsonKey(name: 'InstallerUrl') String? installerUrl,@JsonKey(name: 'InstallerType') String? installerType,@JsonKey(name: 'InstallerSha256') String? installerSha256,@JsonKey(name: 'InstallerLocale') String? locale,@JsonKey(name: 'Architecture') String? architecture,@JsonKey(name: 'ProductCode') String? productCode
});




}
/// @nodoc
class __$InstallerCopyWithImpl<$Res>
    implements _$InstallerCopyWith<$Res> {
  __$InstallerCopyWithImpl(this._self, this._then);

  final _Installer _self;
  final $Res Function(_Installer) _then;

/// Create a copy of Installer
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? installerUrl = freezed,Object? installerType = freezed,Object? installerSha256 = freezed,Object? locale = freezed,Object? architecture = freezed,Object? productCode = freezed,}) {
  return _then(_Installer(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,installerUrl: freezed == installerUrl ? _self.installerUrl : installerUrl // ignore: cast_nullable_to_non_nullable
as String?,installerType: freezed == installerType ? _self.installerType : installerType // ignore: cast_nullable_to_non_nullable
as String?,installerSha256: freezed == installerSha256 ? _self.installerSha256 : installerSha256 // ignore: cast_nullable_to_non_nullable
as String?,locale: freezed == locale ? _self.locale : locale // ignore: cast_nullable_to_non_nullable
as String?,architecture: freezed == architecture ? _self.architecture : architecture // ignore: cast_nullable_to_non_nullable
as String?,productCode: freezed == productCode ? _self.productCode : productCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
