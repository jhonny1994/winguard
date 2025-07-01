// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static String m0(exitCode) =>
      "La commande a échoué avec le code de sortie ${exitCode}";

  static String m1(count) =>
      "${Intl.plural(count, one: '1 application installée', other: '${count} applications installées')}";

  static String m2(count) =>
      "Êtes-vous sûr de vouloir mettre à jour tous les ${count} paquets ? Cela peut prendre plusieurs minutes.";

  static String m3(count) =>
      "${Intl.plural(count, one: '1 mise à jour disponible', other: '${count} mises à jour disponibles')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appTitle": MessageLookupByLibrary.simpleMessage("Wingard"),
        "cancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "confirm": MessageLookupByLibrary.simpleMessage("Confirmer"),
        "errorParsingFailed": MessageLookupByLibrary.simpleMessage(
            "Échec de l\'analyse de la sortie winget"),
        "errorProcessFailed": m0,
        "errorTimeout":
            MessageLookupByLibrary.simpleMessage("La commande a expiré"),
        "errorWingetNotInstalled": MessageLookupByLibrary.simpleMessage(
            "Winget n\'est pas installé sur ce système"),
        "installedAppsPageTitle":
            MessageLookupByLibrary.simpleMessage("Applications installées"),
        "installedPackagesCount": m1,
        "language": MessageLookupByLibrary.simpleMessage("Langue"),
        "loadingPackageName":
            MessageLookupByLibrary.simpleMessage("Nom du paquet"),
        "loadingPackages":
            MessageLookupByLibrary.simpleMessage("Chargement des paquets..."),
        "loadingVersionInfo":
            MessageLookupByLibrary.simpleMessage("Informations de version"),
        "noInstalledPackagesFound": MessageLookupByLibrary.simpleMessage(
            "Aucun paquet installé trouvé"),
        "noUpdatesAvailable": MessageLookupByLibrary.simpleMessage(
            "Aucune mise à jour disponible"),
        "packageDescriptionLabel":
            MessageLookupByLibrary.simpleMessage("Description"),
        "packageHomepageLabel":
            MessageLookupByLibrary.simpleMessage("Site web"),
        "packageIdLabel": MessageLookupByLibrary.simpleMessage("ID"),
        "packageLicenseLabel": MessageLookupByLibrary.simpleMessage("Licence"),
        "packageNameLabel": MessageLookupByLibrary.simpleMessage("Nom"),
        "packagePublisherLabel":
            MessageLookupByLibrary.simpleMessage("Éditeur"),
        "packageReleaseNotesLabel":
            MessageLookupByLibrary.simpleMessage("Notes de version"),
        "packageUpdateFailed": MessageLookupByLibrary.simpleMessage(
            "Échec de la mise à jour du paquet"),
        "packageUpdated": MessageLookupByLibrary.simpleMessage(
            "Paquet mis à jour avec succès"),
        "packageVersionLabel": MessageLookupByLibrary.simpleMessage("Version"),
        "refresh": MessageLookupByLibrary.simpleMessage("Actualiser"),
        "refreshButton": MessageLookupByLibrary.simpleMessage("Actualiser"),
        "searchPlaceholder": MessageLookupByLibrary.simpleMessage(
            "Rechercher des applications installées..."),
        "settingsAppearance": MessageLookupByLibrary.simpleMessage("Apparence"),
        "settingsPageTitle": MessageLookupByLibrary.simpleMessage("Paramètres"),
        "theme": MessageLookupByLibrary.simpleMessage("Thème"),
        "themeDark": MessageLookupByLibrary.simpleMessage("Sombre"),
        "themeLight": MessageLookupByLibrary.simpleMessage("Clair"),
        "themeSystem": MessageLookupByLibrary.simpleMessage("Système"),
        "uninstallButton": MessageLookupByLibrary.simpleMessage("Désinstaller"),
        "unknownPackage": MessageLookupByLibrary.simpleMessage("?"),
        "update": MessageLookupByLibrary.simpleMessage("Mettre à jour"),
        "updateAll": MessageLookupByLibrary.simpleMessage("Tout mettre à jour"),
        "updateAllConfirmationMessage": m2,
        "updateAllConfirmationTitle": MessageLookupByLibrary.simpleMessage(
            "Mettre à jour tous les paquets"),
        "updateFailed":
            MessageLookupByLibrary.simpleMessage("Échec de la mise à jour"),
        "updateInProgress":
            MessageLookupByLibrary.simpleMessage("Mise à jour en cours..."),
        "updateSuccessful": MessageLookupByLibrary.simpleMessage(
            "Mise à jour terminée avec succès"),
        "updatesAvailable": m3,
        "updatesPageTitle":
            MessageLookupByLibrary.simpleMessage("Mises à jour"),
        "updating": MessageLookupByLibrary.simpleMessage("Mise à jour..."),
        "updatingAll":
            MessageLookupByLibrary.simpleMessage("Mise à jour de tout..."),
        "upgradeAllButton":
            MessageLookupByLibrary.simpleMessage("Tout mettre à jour"),
        "upgradeButton": MessageLookupByLibrary.simpleMessage("Mettre à jour"),
        "versionSeparator": MessageLookupByLibrary.simpleMessage(" → ")
      };
}
