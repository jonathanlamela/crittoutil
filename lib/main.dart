import 'package:crittoutil/screens/converter_screen.dart';
import 'package:crittoutil/screens/decrypter_screen.dart';
import 'package:crittoutil/screens/encrypter_screen.dart';
import 'package:crittoutil/screens/home_screen.dart';
import 'package:crittoutil/src/generated/i18n/app_localizations.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Critto Util',
      themeMode: ThemeMode.system,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.grey,
          primary: Colors.blueGrey,
          primaryContainer: Colors.grey.shade200,
          secondaryContainer: Colors.grey.shade100,
        ),
        scaffoldBackgroundColor: Colors.grey.shade50,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueGrey.shade500,
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          brightness: Brightness.dark,
          seedColor: Colors.pink,
          primary: Colors.blueGrey.shade900,
          primaryContainer: Colors.blueGrey.shade800,
          secondaryContainer: Colors.blueGrey.shade700,
          inversePrimary: Colors.blueGrey.shade500,
        ),
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.blueGrey.shade500,
          foregroundColor: Colors.white,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),

        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blueGrey.shade500,
            padding: EdgeInsets.all(16),
            textStyle: TextStyle(fontSize: 16),
          ),
        ),
        scaffoldBackgroundColor: Colors.blueGrey.shade900,
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: Colors.white),
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.red),
          ),
          disabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          errorStyle: TextStyle(color: Colors.red),
          floatingLabelStyle: TextStyle(color: Colors.white),
          focusColor: Colors.white,
        ),
      ),

      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: const Locale('en', ''),
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      initialRoute: "/",
      onGenerateRoute: (settings) {
        if (settings.name == '/converter') {
          return MaterialPageRoute(
            builder: (context) => const ConverterScreen(),
          );
        }

        if (settings.name == '/encrypter') {
          return MaterialPageRoute(
            builder: (context) => const EncrypterScreen(),
          );
        }

        if (settings.name == '/decrypter') {
          return MaterialPageRoute(
            builder: (context) => const DecrypterScreen(),
          );
        }

        return MaterialPageRoute(builder: (context) => const HomeScreen());
      },
    );
  }
}
