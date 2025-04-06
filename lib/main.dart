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
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.grey,
          primary: Colors.blueGrey,
          primaryContainer: Colors.white,
          secondaryContainer: Colors.grey.shade100,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.pink,
          primary: Colors.blueGrey.shade900,
          primaryContainer: Colors.blueGrey.shade800,
          secondaryContainer: Colors.black,
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white),
          titleMedium: TextStyle(color: Colors.white),
        ),

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
