// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'winget_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$WingetException {

 String get command;
/// Create a copy of WingetException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WingetExceptionCopyWith<WingetException> get copyWith => _$WingetExceptionCopyWithImpl<WingetException>(this as WingetException, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WingetException&&(identical(other.command, command) || other.command == command));
}


@override
int get hashCode => Object.hash(runtimeType,command);

@override
String toString() {
  return 'WingetException(command: $command)';
}


}

/// @nodoc
abstract mixin class $WingetExceptionCopyWith<$Res>  {
  factory $WingetExceptionCopyWith(WingetException value, $Res Function(WingetException) _then) = _$WingetExceptionCopyWithImpl;
@useResult
$Res call({
 String command
});




}
/// @nodoc
class _$WingetExceptionCopyWithImpl<$Res>
    implements $WingetExceptionCopyWith<$Res> {
  _$WingetExceptionCopyWithImpl(this._self, this._then);

  final WingetException _self;
  final $Res Function(WingetException) _then;

/// Create a copy of WingetException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? command = null,}) {
  return _then(_self.copyWith(
command: null == command ? _self.command : command // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc


class _ProcessFailed implements WingetException {
  const _ProcessFailed({required this.command, required this.exitCode, required this.errorMessage});
  

@override final  String command;
 final  int exitCode;
 final  String errorMessage;

/// Create a copy of WingetException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProcessFailedCopyWith<_ProcessFailed> get copyWith => __$ProcessFailedCopyWithImpl<_ProcessFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProcessFailed&&(identical(other.command, command) || other.command == command)&&(identical(other.exitCode, exitCode) || other.exitCode == exitCode)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,command,exitCode,errorMessage);

@override
String toString() {
  return 'WingetException.processFailed(command: $command, exitCode: $exitCode, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ProcessFailedCopyWith<$Res> implements $WingetExceptionCopyWith<$Res> {
  factory _$ProcessFailedCopyWith(_ProcessFailed value, $Res Function(_ProcessFailed) _then) = __$ProcessFailedCopyWithImpl;
@override @useResult
$Res call({
 String command, int exitCode, String errorMessage
});




}
/// @nodoc
class __$ProcessFailedCopyWithImpl<$Res>
    implements _$ProcessFailedCopyWith<$Res> {
  __$ProcessFailedCopyWithImpl(this._self, this._then);

  final _ProcessFailed _self;
  final $Res Function(_ProcessFailed) _then;

/// Create a copy of WingetException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? command = null,Object? exitCode = null,Object? errorMessage = null,}) {
  return _then(_ProcessFailed(
command: null == command ? _self.command : command // ignore: cast_nullable_to_non_nullable
as String,exitCode: null == exitCode ? _self.exitCode : exitCode // ignore: cast_nullable_to_non_nullable
as int,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ParsingFailed implements WingetException {
  const _ParsingFailed({required this.command, required this.rawOutput});
  

@override final  String command;
 final  String rawOutput;

/// Create a copy of WingetException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ParsingFailedCopyWith<_ParsingFailed> get copyWith => __$ParsingFailedCopyWithImpl<_ParsingFailed>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ParsingFailed&&(identical(other.command, command) || other.command == command)&&(identical(other.rawOutput, rawOutput) || other.rawOutput == rawOutput));
}


@override
int get hashCode => Object.hash(runtimeType,command,rawOutput);

@override
String toString() {
  return 'WingetException.parsingFailed(command: $command, rawOutput: $rawOutput)';
}


}

/// @nodoc
abstract mixin class _$ParsingFailedCopyWith<$Res> implements $WingetExceptionCopyWith<$Res> {
  factory _$ParsingFailedCopyWith(_ParsingFailed value, $Res Function(_ParsingFailed) _then) = __$ParsingFailedCopyWithImpl;
@override @useResult
$Res call({
 String command, String rawOutput
});




}
/// @nodoc
class __$ParsingFailedCopyWithImpl<$Res>
    implements _$ParsingFailedCopyWith<$Res> {
  __$ParsingFailedCopyWithImpl(this._self, this._then);

  final _ParsingFailed _self;
  final $Res Function(_ParsingFailed) _then;

/// Create a copy of WingetException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? command = null,Object? rawOutput = null,}) {
  return _then(_ParsingFailed(
command: null == command ? _self.command : command // ignore: cast_nullable_to_non_nullable
as String,rawOutput: null == rawOutput ? _self.rawOutput : rawOutput // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _TimedOut implements WingetException {
  const _TimedOut({required this.command});
  

@override final  String command;

/// Create a copy of WingetException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TimedOutCopyWith<_TimedOut> get copyWith => __$TimedOutCopyWithImpl<_TimedOut>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TimedOut&&(identical(other.command, command) || other.command == command));
}


@override
int get hashCode => Object.hash(runtimeType,command);

@override
String toString() {
  return 'WingetException.timedOut(command: $command)';
}


}

/// @nodoc
abstract mixin class _$TimedOutCopyWith<$Res> implements $WingetExceptionCopyWith<$Res> {
  factory _$TimedOutCopyWith(_TimedOut value, $Res Function(_TimedOut) _then) = __$TimedOutCopyWithImpl;
@override @useResult
$Res call({
 String command
});




}
/// @nodoc
class __$TimedOutCopyWithImpl<$Res>
    implements _$TimedOutCopyWith<$Res> {
  __$TimedOutCopyWithImpl(this._self, this._then);

  final _TimedOut _self;
  final $Res Function(_TimedOut) _then;

/// Create a copy of WingetException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? command = null,}) {
  return _then(_TimedOut(
command: null == command ? _self.command : command // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
