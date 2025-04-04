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

  @override
  String get convert_btn => 'Convert';

  @override
  String get input_label => 'Input';

  @override
  String get output_label => 'Output';

  @override
  String get input_type_label => 'Convert from';

  @override
  String get output_type_label => 'Convert to';

  @override
  String get text_format => 'Text';

  @override
  String get binary_format => 'Binary';

  @override
  String get base64_format => 'Base64';

  @override
  String get empty_field_error => 'Input field cannot be empty';

  @override
  String get no_valid_binary => 'Binary value is not valid';

  @override
  String get no_valid_base64 => 'Base64 value is not valid';
}
