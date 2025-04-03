// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get converter => 'Convertitore';

  @override
  String get converter_description => 'Converti in binario, Base64 e viceversa';

  @override
  String get encrypter => 'Cittografia';

  @override
  String get encrypter_description => 'Converti testo in chiaro in testo cifrato';

  @override
  String get decrypter => 'Decrittografia';

  @override
  String get descripter_description => 'Converti testo cifrato in testo in chiaro';
}
