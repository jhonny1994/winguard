import 'package:freezed_annotation/freezed_annotation.dart';

part 'winget_exception.freezed.dart';

@freezed
abstract class WingetException with _$WingetException implements Exception {
  const factory WingetException.processFailed({
    required String command,
    required int exitCode,
    required String errorMessage,
  }) = _ProcessFailed;

  const factory WingetException.parsingFailed({
    required String command,
    required String rawOutput,
  }) = _ParsingFailed;

  const factory WingetException.timedOut({
    required String command,
  }) = _TimedOut;
}
