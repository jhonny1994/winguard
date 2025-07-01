// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(exitCode) => "Command failed with exit code ${exitCode}";

  static String m1(count) =>
      "${Intl.plural(count, one: '1 package installed', other: '${count} packages installed')}";

  static String m2(count) =>
      "Are you sure you want to update all ${count} packages? This may take several minutes.";

  static String m3(count) =>
      "${Intl.plural(count, one: '1 update available', other: '${count} updates available')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appTitle": MessageLookupByLibrary.simpleMessage("Wingard"),
        "cancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirm"),
        "errorParsingFailed": MessageLookupByLibrary.simpleMessage(
            "Failed to parse winget output"),
        "errorProcessFailed": m0,
        "errorTimeout":
            MessageLookupByLibrary.simpleMessage("Command timed out"),
        "errorWingetNotInstalled": MessageLookupByLibrary.simpleMessage(
            "Winget is not installed on this system"),
        "installedAppsPageTitle":
            MessageLookupByLibrary.simpleMessage("Installed Apps"),
        "installedPackagesCount": m1,
        "language": MessageLookupByLibrary.simpleMessage("Language"),
        "loadingPackageName":
            MessageLookupByLibrary.simpleMessage("Package Name"),
        "loadingPackages":
            MessageLookupByLibrary.simpleMessage("Loading packages..."),
        "loadingVersionInfo":
            MessageLookupByLibrary.simpleMessage("Version information"),
        "noInstalledPackagesFound":
            MessageLookupByLibrary.simpleMessage("No installed packages found"),
        "noUpdatesAvailable":
            MessageLookupByLibrary.simpleMessage("No updates available"),
        "packageDescriptionLabel":
            MessageLookupByLibrary.simpleMessage("Description"),
        "packageHomepageLabel":
            MessageLookupByLibrary.simpleMessage("Homepage"),
        "packageIdLabel": MessageLookupByLibrary.simpleMessage("ID"),
        "packageLicenseLabel": MessageLookupByLibrary.simpleMessage("License"),
        "packageNameLabel": MessageLookupByLibrary.simpleMessage("Name"),
        "packagePublisherLabel":
            MessageLookupByLibrary.simpleMessage("Publisher"),
        "packageReleaseNotesLabel":
            MessageLookupByLibrary.simpleMessage("Release Notes"),
        "packageUpdateFailed":
            MessageLookupByLibrary.simpleMessage("Failed to update package"),
        "packageUpdated": MessageLookupByLibrary.simpleMessage(
            "Package updated successfully"),
        "packageVersionLabel": MessageLookupByLibrary.simpleMessage("Version"),
        "refresh": MessageLookupByLibrary.simpleMessage("Refresh"),
        "refreshButton": MessageLookupByLibrary.simpleMessage("Refresh"),
        "searchPlaceholder": MessageLookupByLibrary.simpleMessage(
            "Search installed packages..."),
        "settingsAppearance":
            MessageLookupByLibrary.simpleMessage("Appearance"),
        "settingsPageTitle": MessageLookupByLibrary.simpleMessage("Settings"),
        "theme": MessageLookupByLibrary.simpleMessage("Theme"),
        "themeDark": MessageLookupByLibrary.simpleMessage("Dark"),
        "themeLight": MessageLookupByLibrary.simpleMessage("Light"),
        "themeSystem": MessageLookupByLibrary.simpleMessage("System"),
        "uninstallButton": MessageLookupByLibrary.simpleMessage("Uninstall"),
        "unknownPackage": MessageLookupByLibrary.simpleMessage("?"),
        "update": MessageLookupByLibrary.simpleMessage("Update"),
        "updateAll": MessageLookupByLibrary.simpleMessage("Update All"),
        "updateAllConfirmationMessage": m2,
        "updateAllConfirmationTitle":
            MessageLookupByLibrary.simpleMessage("Update All Packages"),
        "updateFailed": MessageLookupByLibrary.simpleMessage("Update failed"),
        "updateInProgress":
            MessageLookupByLibrary.simpleMessage("Update in progress..."),
        "updateSuccessful": MessageLookupByLibrary.simpleMessage(
            "Update completed successfully"),
        "updatesAvailable": m3,
        "updatesPageTitle": MessageLookupByLibrary.simpleMessage("Updates"),
        "updating": MessageLookupByLibrary.simpleMessage("Updating..."),
        "updatingAll": MessageLookupByLibrary.simpleMessage("Updating All..."),
        "upgradeAllButton": MessageLookupByLibrary.simpleMessage("Upgrade All"),
        "upgradeButton": MessageLookupByLibrary.simpleMessage("Upgrade"),
        "versionSeparator": MessageLookupByLibrary.simpleMessage(" → ")
      };
}
