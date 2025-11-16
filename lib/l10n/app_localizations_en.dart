// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class DraftModeLocalizationsEn extends DraftModeLocalizations {
  DraftModeLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get btnCancel => 'Cancel';

  @override
  String get btnDelete => 'Delete';

  @override
  String get btnConfirmNo => 'No';

  @override
  String get btnConfirmYes => 'Yes';

  @override
  String workerAutoConfirmIn({required Object time}) {
    return 'Automatically confirms in $time';
  }
}
