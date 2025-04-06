import 'package:crittoutil/src/generated/i18n/app_localizations.dart';
import 'package:flutter/material.dart';

class EncrypterScreen extends StatelessWidget {
  const EncrypterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.encrypter,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Container(),
    );
  }
}
