import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_it.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'i18n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('it')
  ];

  /// No description provided for @converter.
  ///
  /// In en, this message translates to:
  /// **'Converter'**
  String get converter;

  /// No description provided for @converter_description.
  ///
  /// In en, this message translates to:
  /// **'Convert to binary, Base64 and reverse'**
  String get converter_description;

  /// No description provided for @encrypter.
  ///
  /// In en, this message translates to:
  /// **'Encrypter'**
  String get encrypter;

  /// No description provided for @encrypter_description.
  ///
  /// In en, this message translates to:
  /// **'Convert clear-text to ciphertext'**
  String get encrypter_description;

  /// No description provided for @decrypter.
  ///
  /// In en, this message translates to:
  /// **'Decrypter'**
  String get decrypter;

  /// No description provided for @descripter_description.
  ///
  /// In en, this message translates to:
  /// **'Convert cipher text to cleartext'**
  String get descripter_description;

  /// No description provided for @convert_btn.
  ///
  /// In en, this message translates to:
  /// **'Convert'**
  String get convert_btn;

  /// No description provided for @input_label.
  ///
  /// In en, this message translates to:
  /// **'Input'**
  String get input_label;

  /// No description provided for @output_label.
  ///
  /// In en, this message translates to:
  /// **'Output'**
  String get output_label;

  /// No description provided for @input_type_label.
  ///
  /// In en, this message translates to:
  /// **'Convert from'**
  String get input_type_label;

  /// No description provided for @output_type_label.
  ///
  /// In en, this message translates to:
  /// **'Convert to'**
  String get output_type_label;

  /// No description provided for @text_format.
  ///
  /// In en, this message translates to:
  /// **'Text'**
  String get text_format;

  /// No description provided for @binary_format.
  ///
  /// In en, this message translates to:
  /// **'Binary'**
  String get binary_format;

  /// No description provided for @base64_format.
  ///
  /// In en, this message translates to:
  /// **'Base64'**
  String get base64_format;

  /// No description provided for @empty_field_error.
  ///
  /// In en, this message translates to:
  /// **'Input field cannot be empty'**
  String get empty_field_error;

  /// No description provided for @no_valid_binary.
  ///
  /// In en, this message translates to:
  /// **'Binary value is not valid'**
  String get no_valid_binary;

  /// No description provided for @no_valid_base64.
  ///
  /// In en, this message translates to:
  /// **'Base64 value is not valid'**
  String get no_valid_base64;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'it'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'it': return AppLocalizationsIt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
