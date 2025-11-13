import 'package:draftmode_localization/localizations.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  group('DraftModeLocalizations', () {
    test('loads English strings via the delegate', () async {
      final localizations = await DraftModeLocalizations.delegate.load(
        const Locale('en'),
      );

      expect(localizations.btnCancel, 'Cancel');
      expect(localizations.btnConfirmYes, 'Yes');
      expect(
        localizations.workerAutoConfirmIn(time: '5s'),
        'Automatically confirms in 5s',
      );
    });

    test('loads German strings via the delegate', () async {
      final localizations = await DraftModeLocalizations.delegate.load(
        const Locale('de'),
      );

      expect(localizations.btnCancel, 'Abbrechen');
      expect(localizations.btnConfirmNo, 'Nein');
      expect(
        localizations.workerAutoConfirmIn(time: '10s'),
        'automatische Bestätigung in 10s',
      );
    });

    test('exposes supported locales and rejects unsupported ones', () {
      expect(
        DraftModeLocalizations.supportedLocales,
        containsAll(<Locale>[const Locale('de'), const Locale('en')]),
      );

      expect(
        () => lookupDraftModeLocalizations(const Locale('es')),
        throwsA(isA<FlutterError>()),
      );
    });
  });
}
