// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get converter => 'Converter';

  @override
  String get converter_description => 'Convert to binary, Base64 and reverse';

  @override
  String get encrypter => 'Encrypter';

  @override
  String get encrypter_description => 'Convert clear-text to ciphertext';

  @override
  String get decrypter => 'Decrypter';

  @override
  String get descripter_description => 'Convert cipher text to cleartext';
}
