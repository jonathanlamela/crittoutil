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

  @override
  String get convert_btn => 'Converti';

  @override
  String get input_label => 'Input';

  @override
  String get output_label => 'Risultato';

  @override
  String get input_type_label => 'Converti da';

  @override
  String get output_type_label => 'Converti in';

  @override
  String get text_format => 'Testo';

  @override
  String get binary_format => 'Binario';

  @override
  String get base64_format => 'Base64';

  @override
  String get empty_field_error => 'Il campo non può essere vuoto';

  @override
  String get no_valid_binary => 'Valore binario non valido';

  @override
  String get no_valid_base64 => 'Valore Base64 non valido';
}
