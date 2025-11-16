// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class DraftModeLocalizationsDe extends DraftModeLocalizations {
  DraftModeLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get btnCancel => 'Abbrechen';

  @override
  String get btnDelete => 'Löschen';

  @override
  String get btnConfirmNo => 'Nein';

  @override
  String get btnConfirmYes => 'Ja';

  @override
  String workerAutoConfirmIn({required Object time}) {
    return 'automatische Bestätigung in $time';
  }
}
