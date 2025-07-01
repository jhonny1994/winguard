// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(exitCode) => "فشلت العملية برمز الخروج ${exitCode}";

  static String m1(count) =>
      "${Intl.plural(count, zero: 'لا توجد تطبيقات مثبتة', one: 'تطبيق واحد مثبت', two: 'تطبيقان مثبتان', few: '${count} تطبيقات مثبتة', many: '${count} تطبيقا مثبتا', other: '${count} تطبيق مثبت')}";

  static String m2(count) =>
      "هل أنت متأكد من رغبتك في تحديث جميع الحزم الـ ${count}؟ قد يستغرق هذا عدة دقائق.";

  static String m3(count) =>
      "${Intl.plural(count, zero: 'لا توجد تحديثات', one: 'تحديث واحد متاح', two: 'تحديثان متاحان', few: '${count} تحديثات متاحة', many: '${count} تحديثا متاحا', other: '${count} تحديث متاح')}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "appTitle": MessageLookupByLibrary.simpleMessage("Wingard"),
        "cancel": MessageLookupByLibrary.simpleMessage("إلغاء"),
        "confirm": MessageLookupByLibrary.simpleMessage("تأكيد"),
        "errorParsingFailed":
            MessageLookupByLibrary.simpleMessage("فشل تحليل مخرجات winget"),
        "errorProcessFailed": m0,
        "errorTimeout":
            MessageLookupByLibrary.simpleMessage("انتهت مهلة العملية"),
        "errorWingetNotInstalled": MessageLookupByLibrary.simpleMessage(
            "Winget غير مثبت على هذا النظام"),
        "installedAppsPageTitle":
            MessageLookupByLibrary.simpleMessage("التطبيقات المثبتة"),
        "installedPackagesCount": m1,
        "language": MessageLookupByLibrary.simpleMessage("اللغة"),
        "loadingPackageName":
            MessageLookupByLibrary.simpleMessage("اسم الحزمة"),
        "loadingPackages":
            MessageLookupByLibrary.simpleMessage("جاري تحميل الحزم..."),
        "loadingVersionInfo":
            MessageLookupByLibrary.simpleMessage("معلومات الإصدار"),
        "noInstalledPackagesFound":
            MessageLookupByLibrary.simpleMessage("لم يتم العثور على حزم مثبتة"),
        "noUpdatesAvailable":
            MessageLookupByLibrary.simpleMessage("لا توجد تحديثات متاحة"),
        "packageDescriptionLabel":
            MessageLookupByLibrary.simpleMessage("الوصف"),
        "packageHomepageLabel":
            MessageLookupByLibrary.simpleMessage("الموقع الإلكتروني"),
        "packageIdLabel": MessageLookupByLibrary.simpleMessage("المعرف"),
        "packageLicenseLabel": MessageLookupByLibrary.simpleMessage("الترخيص"),
        "packageNameLabel": MessageLookupByLibrary.simpleMessage("الاسم"),
        "packagePublisherLabel": MessageLookupByLibrary.simpleMessage("الناشر"),
        "packageReleaseNotesLabel":
            MessageLookupByLibrary.simpleMessage("ملاحظات الإصدار"),
        "packageUpdateFailed":
            MessageLookupByLibrary.simpleMessage("فشل في تحديث الحزمة"),
        "packageUpdated":
            MessageLookupByLibrary.simpleMessage("تم تحديث الحزمة بنجاح"),
        "packageVersionLabel": MessageLookupByLibrary.simpleMessage("الإصدار"),
        "refresh": MessageLookupByLibrary.simpleMessage("تحديث"),
        "refreshButton": MessageLookupByLibrary.simpleMessage("تحديث"),
        "searchPlaceholder": MessageLookupByLibrary.simpleMessage(
            "البحث في التطبيقات المثبتة..."),
        "settingsAppearance": MessageLookupByLibrary.simpleMessage("المظهر"),
        "settingsPageTitle": MessageLookupByLibrary.simpleMessage("الإعدادات"),
        "theme": MessageLookupByLibrary.simpleMessage("المظهر"),
        "themeDark": MessageLookupByLibrary.simpleMessage("داكن"),
        "themeLight": MessageLookupByLibrary.simpleMessage("فاتح"),
        "themeSystem": MessageLookupByLibrary.simpleMessage("النظام"),
        "uninstallButton":
            MessageLookupByLibrary.simpleMessage("إلغاء التثبيت"),
        "unknownPackage": MessageLookupByLibrary.simpleMessage("؟"),
        "update": MessageLookupByLibrary.simpleMessage("تحديث"),
        "updateAll": MessageLookupByLibrary.simpleMessage("تحديث الكل"),
        "updateAllConfirmationMessage": m2,
        "updateAllConfirmationTitle":
            MessageLookupByLibrary.simpleMessage("تحديث جميع الحزم"),
        "updateFailed": MessageLookupByLibrary.simpleMessage("فشل التحديث"),
        "updateInProgress":
            MessageLookupByLibrary.simpleMessage("التحديث قيد التقدم..."),
        "updateSuccessful":
            MessageLookupByLibrary.simpleMessage("تم التحديث بنجاح"),
        "updatesAvailable": m3,
        "updatesPageTitle": MessageLookupByLibrary.simpleMessage("التحديثات"),
        "updating": MessageLookupByLibrary.simpleMessage("جاري التحديث..."),
        "updatingAll":
            MessageLookupByLibrary.simpleMessage("جاري تحديث الكل..."),
        "upgradeAllButton": MessageLookupByLibrary.simpleMessage("تحديث الكل"),
        "upgradeButton": MessageLookupByLibrary.simpleMessage("تحديث"),
        "versionSeparator": MessageLookupByLibrary.simpleMessage(" → ")
      };
}
