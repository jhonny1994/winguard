// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Wingard`
  String get appTitle {
    return Intl.message(
      'Wingard',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Updates`
  String get updatesPageTitle {
    return Intl.message(
      'Updates',
      name: 'updatesPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Installed Apps`
  String get installedAppsPageTitle {
    return Intl.message(
      'Installed Apps',
      name: 'installedAppsPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settingsPageTitle {
    return Intl.message(
      'Settings',
      name: 'settingsPageTitle',
      desc: '',
      args: [],
    );
  }

  /// `Appearance`
  String get settingsAppearance {
    return Intl.message(
      'Appearance',
      name: 'settingsAppearance',
      desc: '',
      args: [],
    );
  }

  /// `Theme`
  String get theme {
    return Intl.message(
      'Theme',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `System`
  String get themeSystem {
    return Intl.message(
      'System',
      name: 'themeSystem',
      desc: '',
      args: [],
    );
  }

  /// `Light`
  String get themeLight {
    return Intl.message(
      'Light',
      name: 'themeLight',
      desc: '',
      args: [],
    );
  }

  /// `Dark`
  String get themeDark {
    return Intl.message(
      'Dark',
      name: 'themeDark',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Winget is not installed on this system`
  String get errorWingetNotInstalled {
    return Intl.message(
      'Winget is not installed on this system',
      name: 'errorWingetNotInstalled',
      desc: '',
      args: [],
    );
  }

  /// `Command failed with exit code {exitCode}`
  String errorProcessFailed(Object exitCode) {
    return Intl.message(
      'Command failed with exit code $exitCode',
      name: 'errorProcessFailed',
      desc: '',
      args: [exitCode],
    );
  }

  /// `Failed to parse winget output`
  String get errorParsingFailed {
    return Intl.message(
      'Failed to parse winget output',
      name: 'errorParsingFailed',
      desc: '',
      args: [],
    );
  }

  /// `Command timed out`
  String get errorTimeout {
    return Intl.message(
      'Command timed out',
      name: 'errorTimeout',
      desc: '',
      args: [],
    );
  }

  /// `ID`
  String get packageIdLabel {
    return Intl.message(
      'ID',
      name: 'packageIdLabel',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get packageNameLabel {
    return Intl.message(
      'Name',
      name: 'packageNameLabel',
      desc: '',
      args: [],
    );
  }

  /// `Version`
  String get packageVersionLabel {
    return Intl.message(
      'Version',
      name: 'packageVersionLabel',
      desc: '',
      args: [],
    );
  }

  /// `Publisher`
  String get packagePublisherLabel {
    return Intl.message(
      'Publisher',
      name: 'packagePublisherLabel',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get packageDescriptionLabel {
    return Intl.message(
      'Description',
      name: 'packageDescriptionLabel',
      desc: '',
      args: [],
    );
  }

  /// `Homepage`
  String get packageHomepageLabel {
    return Intl.message(
      'Homepage',
      name: 'packageHomepageLabel',
      desc: '',
      args: [],
    );
  }

  /// `License`
  String get packageLicenseLabel {
    return Intl.message(
      'License',
      name: 'packageLicenseLabel',
      desc: '',
      args: [],
    );
  }

  /// `Release Notes`
  String get packageReleaseNotesLabel {
    return Intl.message(
      'Release Notes',
      name: 'packageReleaseNotesLabel',
      desc: '',
      args: [],
    );
  }

  /// `Upgrade All`
  String get upgradeAllButton {
    return Intl.message(
      'Upgrade All',
      name: 'upgradeAllButton',
      desc: '',
      args: [],
    );
  }

  /// `Upgrade`
  String get upgradeButton {
    return Intl.message(
      'Upgrade',
      name: 'upgradeButton',
      desc: '',
      args: [],
    );
  }

  /// `Uninstall`
  String get uninstallButton {
    return Intl.message(
      'Uninstall',
      name: 'uninstallButton',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refreshButton {
    return Intl.message(
      'Refresh',
      name: 'refreshButton',
      desc: '',
      args: [],
    );
  }

  /// `Search installed packages...`
  String get searchPlaceholder {
    return Intl.message(
      'Search installed packages...',
      name: 'searchPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `No updates available`
  String get noUpdatesAvailable {
    return Intl.message(
      'No updates available',
      name: 'noUpdatesAvailable',
      desc: '',
      args: [],
    );
  }

  /// `{count, plural, =1{1 update available} other{{count} updates available}}`
  String updatesAvailable(num count) {
    return Intl.plural(
      count,
      one: '1 update available',
      other: '$count updates available',
      name: 'updatesAvailable',
      desc: '',
      args: [count],
    );
  }

  /// `{count, plural, =1{1 package installed} other{{count} packages installed}}`
  String installedPackagesCount(num count) {
    return Intl.plural(
      count,
      one: '1 package installed',
      other: '$count packages installed',
      name: 'installedPackagesCount',
      desc: '',
      args: [count],
    );
  }

  /// `Package Name`
  String get loadingPackageName {
    return Intl.message(
      'Package Name',
      name: 'loadingPackageName',
      desc: '',
      args: [],
    );
  }

  /// `Version information`
  String get loadingVersionInfo {
    return Intl.message(
      'Version information',
      name: 'loadingVersionInfo',
      desc: '',
      args: [],
    );
  }

  /// ` → `
  String get versionSeparator {
    return Intl.message(
      ' → ',
      name: 'versionSeparator',
      desc: '',
      args: [],
    );
  }

  /// `?`
  String get unknownPackage {
    return Intl.message(
      '?',
      name: 'unknownPackage',
      desc: '',
      args: [],
    );
  }

  /// `No installed packages found`
  String get noInstalledPackagesFound {
    return Intl.message(
      'No installed packages found',
      name: 'noInstalledPackagesFound',
      desc: '',
      args: [],
    );
  }

  /// `Update`
  String get update {
    return Intl.message(
      'Update',
      name: 'update',
      desc: '',
      args: [],
    );
  }

  /// `Update All`
  String get updateAll {
    return Intl.message(
      'Update All',
      name: 'updateAll',
      desc: '',
      args: [],
    );
  }

  /// `Updating...`
  String get updating {
    return Intl.message(
      'Updating...',
      name: 'updating',
      desc: '',
      args: [],
    );
  }

  /// `Updating All...`
  String get updatingAll {
    return Intl.message(
      'Updating All...',
      name: 'updatingAll',
      desc: '',
      args: [],
    );
  }

  /// `Refresh`
  String get refresh {
    return Intl.message(
      'Refresh',
      name: 'refresh',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Update All Packages`
  String get updateAllConfirmationTitle {
    return Intl.message(
      'Update All Packages',
      name: 'updateAllConfirmationTitle',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to update all {count} packages? This may take several minutes.`
  String updateAllConfirmationMessage(int count) {
    final NumberFormat countNumberFormat = NumberFormat.compact(
      locale: Intl.getCurrentLocale(),
    );
    final String countString = countNumberFormat.format(count);

    return Intl.message(
      'Are you sure you want to update all $countString packages? This may take several minutes.',
      name: 'updateAllConfirmationMessage',
      desc: '',
      args: [countString],
    );
  }

  /// `Update completed successfully`
  String get updateSuccessful {
    return Intl.message(
      'Update completed successfully',
      name: 'updateSuccessful',
      desc: '',
      args: [],
    );
  }

  /// `Update failed`
  String get updateFailed {
    return Intl.message(
      'Update failed',
      name: 'updateFailed',
      desc: '',
      args: [],
    );
  }

  /// `Update in progress...`
  String get updateInProgress {
    return Intl.message(
      'Update in progress...',
      name: 'updateInProgress',
      desc: '',
      args: [],
    );
  }

  /// `Package updated successfully`
  String get packageUpdated {
    return Intl.message(
      'Package updated successfully',
      name: 'packageUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Failed to update package`
  String get packageUpdateFailed {
    return Intl.message(
      'Failed to update package',
      name: 'packageUpdateFailed',
      desc: '',
      args: [],
    );
  }

  /// `Loading packages...`
  String get loadingPackages {
    return Intl.message(
      'Loading packages...',
      name: 'loadingPackages',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'fr'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
