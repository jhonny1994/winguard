import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:winguard/core/constants/app_constants.dart';
import 'package:winguard/shared/providers/shared_preferences_provider.dart';

part 'locale_provider.g.dart';

@riverpod
class LocaleNotifier extends _$LocaleNotifier {
  static const String _localeKey = AppConstants.localeKey;

  @override
  Locale? build() {
    final prefs = ref.watch(sharedPreferencesProvider);
    final localeCode = prefs.getString(_localeKey);
    if (localeCode != null) {
      return Locale(localeCode);
    }
    return null; // System default
  }

  Future<void> setLocale(Locale? locale) async {
    final prefs = ref.read(sharedPreferencesProvider);
    state = locale;
    if (locale != null) {
      await prefs.setString(_localeKey, locale.languageCode);
    } else {
      await prefs.remove(_localeKey);
    }
  }
}
